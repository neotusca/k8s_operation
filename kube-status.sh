#!/bin/sh




case "$1" in
	status)
		echo;echo "##### Service ##";                kubectl -s 192.168.254.20:8080   get svc     --all-namespaces -o wide
		echo;echo "##### Endpoint ##";               kubectl -s 192.168.254.20:8080   get ep      --all-namespaces -o wide
		echo;echo "##### Replication Controller ##"; kubectl -s 192.168.254.20:8080   get rc      --all-namespaces -o wide
		echo;echo "##### Deployment ##";             kubectl -s 192.168.254.20:8080   get deploy  --all-namespaces -o wide
		echo;echo "##### Replication Set ##";        kubectl -s 192.168.254.20:8080   get rs      --all-namespaces #-o wide
		echo;echo "##### Pod ##";                    kubectl -s 192.168.254.20:8080   get pod     --all-namespaces -o wide
		echo;echo "##### Persistent Vol. ##";        kubectl -s 192.168.254.20:8080   get pv      -o wide
		echo;echo "##### Persistent Vol. Claim ##";  kubectl -s 192.168.254.20:8080   get pvc     --all-namespaces #-o wide
		#kubectl get svc --namespace kube-system 
		#kubectl get rc  --namespace kube-system 
		#kubectl get pod  --namespace kube-system 
		;;
	*)
                $0 status
		#echo "Usage: $0 {start|stop|restart|status}"
		exit 1
		;;
esac
