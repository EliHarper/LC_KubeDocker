#!/bin/bash

kubectl apply -f localstorageclass.yaml \
 && kubectl apply -f mongo-data-db-pv.yaml \
 && kubectl apply -f mongo-ss.yaml \
 && kubectl apply -f ../db-service.yaml \
 && kubectl apply -f mongo-pod.yaml \
 && kubectl apply -f mongo-data-db-pvc.yaml \
 && kubectl get po -w
