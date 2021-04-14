#!/bin/bash

topic=$1
workshop_tag=cnd-${topic}-practices

## Bootstrap a new workshop locally

## TODO set working dir workshop-template

template_dir=~/workspace/cnd-practices/workshop-template
workshop_dir=~/workspace/${workshop_tag}

cp -r ${template_dir} ${workshop_dir}

sed -i "s/{{workshop}}//g" ${workshop_dir}/Makefile
sed -i "s/{{workshop}}//g" ${workshop_dir}/**/*.yaml

git init
