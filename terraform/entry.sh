#!/bin/bash
sleep 60
kubectl --kubeconfig kubeconfig exec -it $(kubectl --kubeconfig kubeconfig --namespace jenkins get po | grep jenkins | cut -d" " -f1) --namespace jenkins cat /var/jenkins_home/secrets/initialAdminPassword
kubectl --kubeconfig kubeconfig --namespace jenkins get svc | grep LoadBalancer 