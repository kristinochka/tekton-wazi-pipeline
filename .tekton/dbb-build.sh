#!/bin/sh
set -x
cd /u/ibmuser/tekton
WORKSPACE='/u/ibmuser/tekton'
DBB_LOG_DIR='/u/ibmuser/tekton/dbb-logs'
REPO_NAME=tekton-wazi-pipeline
rm -rf /u/ibmuser/tekton/$REPO_NAME
git clone https://github.com/kristinochka/$REPO_NAME
export DBB_HOME='/usr/lpp/IBM/dbb'
/usr/lpp/IBM/dbb/bin/groovyz -DBB_PERSONAL_DAEMON /u/ibmuser/tekton/dbb-zappbuild/build.groovy --workspace $WORKSPACE --application $REPO_NAME/zopeneditor-sample --hlq IBMUSER.SAMPLE --outDir $DBB_LOG_DIR --fullBuild