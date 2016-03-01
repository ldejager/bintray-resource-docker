# Bintray Resource

Bintray Resource docker image for Concourse CI

See http://concourse.ci/implementing-resources.html for details on how to implement new resources.

# Usage

```
docker build -t ldejager/bintray-resource .
```

Once the container has been built, update the worker references to use the remote (docker hub) docker image. On the Vagrant VM (or Worker VM) edit `/var/vcap/jobs/groundcrew/config/worker.json` and add the resource type "bintray-resource" which points to the location of the hosted container image.

For example:


```
{"image":"docker:///ldejager/bintray-resource","type":"bintray-resource"}
```

Restart the monit process to register the `bintray-resource` resource type:

monit restart beacon

