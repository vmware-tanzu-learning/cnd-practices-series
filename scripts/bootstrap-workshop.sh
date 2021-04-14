#!/bin/bash

## Bootstrap a new workshop locally

pushd `pwd`

TOPIC=$1
SCRIPT_DIR="$(cd $(dirname $0); pwd -P)"
TEMPLATE_DIR="$(dirname "${SCRIPT_DIR}")/workshop-template"
WORKSPACE_DIR="$(dirname $(dirname "${TEMPLATE_DIR}"))"
WORKSHOP_TAG=cnd-${TOPIC}-practices
WORKSHOP_DIR=${WORKSPACE_DIR}/${WORKSHOP_TAG}-eduk8s

cp -r ${TEMPLATE_DIR} ${WORKSPACE_DIR}/
mv ${WORKSPACE_DIR}/workshop-template ${WORKSHOP_DIR}

if [ $(uname) == "Darwin" ]; then
    sed -i.bu "s/{{workshop}}//g" ${WORKSHOP_DIR}/Makefile
    sed -i.bu "s/{{workshop}}//g" ${WORKSHOP_DIR}/**/*.yaml
    rm ${WORKSHOP_DIR}/Makefile.bu
    rm ${WORKSHOP_DIR}/**/*.yaml.bu
else
    sed -i "s/{{workshop}}//g" ${WORKSHOP_DIR}/Makefile
    sed -i "s/{{workshop}}//g" ${WORKSHOP_DIR}/**/*.yaml
fi

cd ${WORKSHOP_DIR}
git init

popd