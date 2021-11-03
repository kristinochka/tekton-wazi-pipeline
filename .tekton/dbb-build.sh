#!/bin/sh
set -x
export DBB_HOME='/usr/lpp/IBM/dbb'
WORKSPACE='/u/ibmuser/tekton'
DBB_LOG_DIR=$WORKSPACE/dbb-logs
REPO_NAME=tekton-wazi-pipeline
rm -rf $WORKSPACE/$REPO_NAME
git clone https://github.com/kristinochka/$REPO_NAME $WORKSPACE/$REPO_NAME
/usr/lpp/IBM/dbb/bin/groovyz -DBB_PERSONAL_DAEMON /u/ibmuser/tekton/dbb-zappbuild/build.groovy --workspace $WORKSPACE --application $REPO_NAME/zopeneditor-sample --hlq IBMUSER.SAMPLE --outDir $DBB_LOG_DIR --fullBuild