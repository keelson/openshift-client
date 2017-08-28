# openshift origin client container

## build

```
oc new-project jobs
```

```
oc new-build https://github.com/keelson/openshift-client.git 
```

```
$ oc get is
NAME               DOCKER REPO                                 TAGS      UPDATED
centos             172.30.151.247:5000/jobs/centos             latest    About a minute ago
openshift-client   172.30.151.247:5000/jobs/openshift-client   latest    11 seconds ago
$ 

```

## run
```
$ oc run oc-version --image=172.30.151.247:5000/jobs/openshift-client --restart=Never
deploymentconfig "oc-version" created
$ oc get pods
NAME                       READY     STATUS      RESTARTS   AGE
oc-version                 0/1       Completed   0          14s
openshift-client-1-build   0/1       Completed   0          5m
$ oc logs oc-version
oc v3.6.0+c4dd4cf
kubernetes v1.6.1+5115d708d7
features: Basic-Auth GSSAPI Kerberos SPNEGO
Server https://172.30.0.1:443
openshift v3.6.0+c4dd4cf
kubernetes v1.6.1+5115d708d7
$

