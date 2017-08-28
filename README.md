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
alpine             172.30.151.247:5000/jobs/alpine             latest    38 seconds ago
openshift-client   172.30.151.247:5000/jobs/openshift-client   latest    22 seconds ago
$ 
```

## run

