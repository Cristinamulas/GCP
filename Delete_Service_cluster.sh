#! /bin/sh
kubectl delete service test
gcloud container clusters delete myapp-cluster
