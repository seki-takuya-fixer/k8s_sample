# k8s_sample

## Environment

- Windows 10

## Setup Local k8s

1. Enable Hyper-V
    1. Enable Hyper-V in BIOS
    1. Enable Hyper-V in Windows features
1. Install Docker for windows
    - reference : https://docs.docker.com/docker-for-windows/install/
1. Enable k8s
    - Right click `Docker for Windows` > `Settings` > `Kubernetes`
      - check `Enable kubernetes`

## Get api version

- Get api group

    ```bat
    > kubectl api-resources
    NAME                              SHORTNAMES   APIGROUP                       NAMESPACED   KIND   
    bindings                                                                      true         Binding
    componentstatuses                 cs                                          false        ComponentStatus
    configmaps                        cm                                          true         ConfigMap      
    endpoints                         ep                                          true         Endpoints      
    events                            ev                                          true         Event
    limitranges                       limits                                      true         LimitRange     
    namespaces                        ns                                          false        Namespace      
    nodes                             no                                          false        Node
    persistentvolumeclaims            pvc                                         true         PersistentVolumeClaim
    persistentvolumes                 pv                                          false        PersistentVolume
    pods                              po                                          true         Pod
    podtemplates                                                                  true         PodTemplate
    replicationcontrollers            rc                                          true         ReplicationController
    resourcequotas                    quota                                       true         ResourceQuota
    secrets                                                                       true         Secret
    serviceaccounts                   sa                                          true         ServiceAccount
    services                          svc                                         true         Service
    initializerconfigurations                      admissionregistration.k8s.io   false        InitializerConfiguration
    mutatingwebhookconfigurations                  admissionregistration.k8s.io   false        MutatingWebhookConfiguration
    validatingwebhookconfigurations                admissionregistration.k8s.io   false        ValidatingWebhookConfiguration
    customresourcedefinitions         crd,crds     apiextensions.k8s.io           false        CustomResourceDefinition
    apiservices                                    apiregistration.k8s.io         false        APIService
    controllerrevisions                            apps                           true         ControllerRevision
    daemonsets                        ds           apps                           true         DaemonSet
    deployments                       deploy       apps                           true         Deployment
    replicasets                       rs           apps                           true         ReplicaSet
    statefulsets                      sts          apps                           true         StatefulSet
    tokenreviews                                   authentication.k8s.io          false        TokenReview
    localsubjectaccessreviews                      authorization.k8s.io           true         LocalSubjectAccessReview
    selfsubjectaccessreviews                       authorization.k8s.io           false        SelfSubjectAccessReview
    selfsubjectrulesreviews                        authorization.k8s.io           false        SelfSubjectRulesReview
    subjectaccessreviews                           authorization.k8s.io           false        SubjectAccessReview
    horizontalpodautoscalers          hpa          autoscaling                    true         HorizontalPodAutoscaler
    cronjobs                          cj           batch                          true         CronJob
    jobs                                           batch                          true         Job
    certificatesigningrequests        csr          certificates.k8s.io            false        CertificateSigningRequest
    leases                                         coordination.k8s.io            true         Lease
    events                            ev           events.k8s.io                  true         Event
    daemonsets                        ds           extensions                     true         DaemonSet
    deployments                       deploy       extensions                     true         Deployment
    ingresses                         ing          extensions                     true         Ingress
    networkpolicies                   netpol       extensions                     true         NetworkPolicy
    podsecuritypolicies               psp          extensions                     false        PodSecurityPolicy
    replicasets                       rs           extensions                     true         ReplicaSet
    nodes                                          metrics.k8s.io                 false        NodeMetrics
    pods                                           metrics.k8s.io                 true         PodMetrics
    networkpolicies                   netpol       networking.k8s.io              true         NetworkPolicy
    poddisruptionbudgets              pdb          policy                         true         PodDisruptionBudget
    podsecuritypolicies               psp          policy                         false        PodSecurityPolicy
    clusterrolebindings                            rbac.authorization.k8s.io      false        ClusterRoleBinding
    clusterroles                                   rbac.authorization.k8s.io      false        ClusterRole
    rolebindings                                   rbac.authorization.k8s.io      true         RoleBinding
    roles                                          rbac.authorization.k8s.io      true         Role
    priorityclasses                   pc           scheduling.k8s.io              false        PriorityClass
    storageclasses                    sc           storage.k8s.io                 false        StorageClass
    volumeattachments                              storage.k8s.io                 false        VolumeAttachment
    ```

- API versions available for each API Groups
    ```bat
    > kubectl api-versions
    admissionregistration.k8s.io/v1alpha1
    admissionregistration.k8s.io/v1beta1
    apiextensions.k8s.io/v1beta1
    apiregistration.k8s.io/v1
    apiregistration.k8s.io/v1beta1
    apps/v1
    apps/v1beta1
    apps/v1beta2
    authentication.k8s.io/v1
    authentication.k8s.io/v1beta1
    authorization.k8s.io/v1
    authorization.k8s.io/v1beta1
    autoscaling/v1
    autoscaling/v2beta1
    autoscaling/v2beta2
    batch/v1
    batch/v1beta1
    certificates.k8s.io/v1beta1
    coordination.k8s.io/v1beta1
    events.k8s.io/v1beta1
    extensions/v1beta1
    metrics.k8s.io/v1beta1
    networking.k8s.io/v1
    policy/v1beta1
    rbac.authorization.k8s.io/v1
    rbac.authorization.k8s.io/v1beta1
    scheduling.k8s.io/v1beta1
    storage.k8s.io/v1
    storage.k8s.io/v1beta1
    v1
    ```
