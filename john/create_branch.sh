#!/bin/bash
################################################################################
#
# GLOBAL VARS
#
################################################################################

BRANCH=$1

date


echo creating a branch called ${BRANCH} from master
time git branch -a | grep ${BRANCH}
time git checkout master
time git pull --rebase
time git pull --rebase upstream master
time git checkout -b ${BRANCH}
time git push
time git branch --set-upstream-to=origin/${BRANCH} ${BRANCH}
time git pull
time git push --set-upstream origin $BRANCH
git branch
echo ""
date
