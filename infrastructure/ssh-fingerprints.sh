#!/bin/bash

ips=(
    "37.27.171.123"
    "37.27.171.116"
    "37.27.171.124"
    "37.27.171.187"
    "37.27.171.186"
    "37.27.171.185"
    "37.27.171.190"
    "37.27.171.189"
    "37.27.171.188"
    "37.27.171.117"
    "37.27.171.118"
    "37.27.171.119"
    "37.27.171.120"
    "37.27.171.121"
    "37.27.171.122"
    "37.27.171.125"
    "37.27.171.126"
    "37.27.171.184"
    "37.27.171.183"
    "37.27.171.115"
    "37.27.171.114"
    "37.27.171.113"
    "37.27.171.182"
    "37.27.171.181"
    "37.27.171.112"
    "37.27.171.111"
    "37.27.171.110"
    "37.27.171.122"
    "37.27.171.108"
    "37.27.171.107"
    "37.27.171.106"
    "37.27.171.109"
)

for ip in "${ips[@]}"
do
    echo "Removing and regenerating SSH fingerprint for $ip"
    ssh-keygen -f "/home/troy/.ssh/known_hosts" -R "$ip"
    ssh-keyscan -H "$ip" >> "/home/troy/.ssh/known_hosts"
done
