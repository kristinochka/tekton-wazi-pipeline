#!/bin/sh
set -x
export DBB_HOME='/usr/lpp/IBM/dbb'
WORKSPACE='/u/ibmuser/tekton'
DBB_LOG_DIR="${WORKSPACE}/dbb-logs"
REPO_NAME='tekton-wazi-pipeline'
REPO_PATH="${WORKSPACE}/${REPO_NAME}"
rm -rf "${REPO_PATH}"
echo $PATH
# export PATH=${PATH}:/rsusr/ported/bin:/usr/lpp/IBM/dbb/bin
/rsusr/ported/bin/git clone https://github.com/kristinochka/${REPO_NAME} ${REPO_PATH}
/usr/lpp/IBM/dbb/bin/groovyz -DBB_PERSONAL_DAEMON /u/ibmuser/tekton/dbb-zappbuild/build.groovy --workspace ${WORKSPACE} --application ${REPO_NAME}/zopeneditor-sample --hlq IBMUSER.SAMPLE --outDir $DBB_LOG_DIR --fullBuild