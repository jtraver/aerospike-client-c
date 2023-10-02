#!/bin/bash
################################################################################
#
# GLOBAL VARS
#
################################################################################

BRANCH=$1

date


echo creating a branch called ${BRANCH} from cdt-create
time git branch -a | grep ${BRANCH}
time git checkout cdt-create
time git pull --rebase
time git pull --rebase upstream cdt-create
time git checkout -b ${BRANCH}
time git push -u ${BRANCH}
time git push --set-upstream origin ${BRANCH}
time git branch --set-upstream-to=origin/${BRANCH} ${BRANCH}
time git pull
echo ""
date
