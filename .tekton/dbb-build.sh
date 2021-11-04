#!/bin/sh
set -x
export DBB_HOME='/usr/lpp/IBM/dbb'
WORKSPACE='/u/ibmuser/tekton'
DBB_LOG_DIR="${WORKSPACE}/dbb-logs"
CODE_REPO_NAME='tekton-wazi-pipeline'
CODE_REPO_PATH="${WORKSPACE}/${CODE_REPO_NAME}"
DBB_ZAPPBUILD_PATH="${WORKSPACE}/dbb-zappbuild"

mkdir -p "${WORKSPACE}"
mkdir -p "${DBB_LOG_DIR}"

rm -rf "${CODE_REPO_PATH}"
rm -rf "${DBB_ZAPPBUILD_PATH}"

cd "${WORKSPACE}"
# export PATH=${PATH}:/rsusr/ported/bin:/usr/lpp/IBM/dbb/bin
/rsusr/ported/bin/git clone https://github.com/IBM/dbb-zappbuild
/rsusr/ported/bin/git clone "https://github.com/kristinochka/${CODE_REPO_NAME}"
cp "${CODE_REPO_PATH}/zopeneditor-sample/application-conf/datasets-sandbox.properties" "${DBB_ZAPPBUILD_PATH}/build-conf/datasets.properties"
/usr/lpp/IBM/dbb/bin/groovyz -DBB_PERSONAL_DAEMON /u/ibmuser/tekton/dbb-zappbuild/build.groovy --workspace ${WORKSPACE} --application ${CODE_REPO_NAME}/zopeneditor-sample --hlq IBMUSER.SAMPLE --outDir $DBB_LOG_DIR --fullBuild