param(
    [string]$ImageName = "sample-website",
    [int]$PortNumber = 8080
)
$ErrorActionPreference = "Stop"
$timeoutSec = 30;

$scriptPath = $MyInvocation.MyCommand.Path
$scriptDir = Split-Path -Parent $scriptPath
Push-Location $scriptDir

try {
    Set-Location .\website\
    docker build -t $ImageName .
    docker run -d -p "${PortNumber}:80" --name sample-website "${ImageName}:latest"
    
    $url = "http://localhost:${PortNumber}"
    Write-Host "open $url"
    $timeoutDateTime = (Get-Date).AddSeconds($timeoutSec)
    while ($true) {
        try {
            (Invoke-WebRequest -Uri $url -Method Get).StatusCode
            break
        }
        catch {
            if ($timeoutDateTime -lt (Get-Date)) {
                throw "failed to start website container."
            }
            Start-Sleep -Seconds 3
        }
    }
    start $url
}
finally {
    Pop-Location
}