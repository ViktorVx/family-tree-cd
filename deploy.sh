#!/bin/bash
kubectl version
kubectl create deployment family-tree-bh --image=docker.io/viktorvx/family-tree-bh:0.0.1-SNAPSHOT
kubectl expose deployment family-tree-bh --type=NodePort --port=8081
kubectl get services family-tree-bh
sleep 5
kubectl port-forward service/family-tree-bh 8081:8081