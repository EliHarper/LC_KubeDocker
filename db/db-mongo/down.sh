#!/bin/bash

kubectl delete pod mongo \
 && kubectl delete persistentvolumeclaim mongo-data-db \
 && kubectl delete persistentvolume mongo-data-db \
 && kubectl delete storageclass local \
 && kubectl delete svc db
