#!/bin/bash

cluster=$1
image=$2

kind load docker-image --name ${cluster} $image