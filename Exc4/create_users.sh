#!/bin/bash

kubectl create serviceaccount admin-user
kubectl create clusterrolebinding admin-user-binding --clusterrole=cluster-admin --serviceaccount=default:admin-user

kubectl create serviceaccount developer-user
kubectl create clusterrolebinding developer-view-binding --clusterrole=cluster-viewer --serviceaccount=default:developer-user

kubectl create serviceaccount devops-user
kubectl create rolebinding devops-edit-binding --role=namespace-editor --serviceaccount=default:devops-user --namespace=default
