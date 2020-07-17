#!/bin/bash

kubectl delete pod mongo \
 ; kubectl patch po mongo-0 -p '{"metadata":{"finalizers":null}}' ; kubectl delete pod mongo-0 \
 ; kubectl patch pvc data-db-mongo-0 -p '{"metadata":{"finalizers":null}}' ; kubectl delete persistentvolumeclaim data-db-mongo-0 \
 ; kubectl delete persistentvolume mongo-data-db \
 ; kubectl delete statefulsets mongo \
 ; kubectl delete storageclass local \
 ; kubectl delete svc mongo-service
