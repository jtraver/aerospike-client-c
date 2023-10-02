#!/bin/bash
################################################################################
#
# GLOBAL VARS
#
################################################################################

# BRANCH=$1
BRANCH1=exp1
BRANCH2=predexp-explore

date


echo creating a branch called ${BRANCH1} from $BRANCH2
time git branch -a | grep ${BRANCH1}
time git checkout $BRANCH2
time git pull --rebase
time git pull --rebase upstream $BRANCH2
time git checkout -b ${BRANCH1}
time git push -u ${BRANCH1}
time git push --set-upstream origin ${BRANCH1}
time git branch --set-upstream-to=origin/${BRANCH1} ${BRANCH1}
time git pull
echo ""
date
