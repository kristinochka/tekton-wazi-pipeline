#!/bin/sh
set -x
mkdir -p '/u/ibmuser/tekton'
rm -rf /u/ibmuser/tekton/zopeneditor-sample
git clone https://github.com/kristinochka/zopeneditor-sample '/u/ibmuser/tekton/zopeneditor-sample'
WORKSPACE='/u/ibmuser/tekton'
DBB_LOG_DIR='/u/ibmuser/tekton/dbb-logs'
export DBB_HOME='/usr/lpp/IBM/dbb'
/usr/lpp/IBM/dbb/bin/groovyz -DBB_PERSONAL_DAEMON /u/ibmuser/tekton/dbb-zappbuild/build.groovy --workspace $WORKSPACE --application zopeneditor-sample --hlq IBMUSER.SAMPLE --outDir $DBB_LOG_DIR --fullBuild