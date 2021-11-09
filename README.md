## Tekton pipeline that execute a DBB build script on zOS.

This Tekton pipeline assumes you have a zOS with DBB installed.\
After creating the pipeline, click on the tile called `Delivery pipeline`. Then click on side menu called `Environment properties` and fill out the following values:

| Name        | Value       | Type   |
| ----------- | ----------- |--------
| apikey      | API key to connect to IBM Cloud      | Secure value
| zos-host    | Host name or IP address of your zOS server| Text value|
| zos-ssh-key | Private key to ssh into zOS        | Secure value|
| zos-ssh-port| Port to ssh into zOS        | Text value|

### To get create a toolchain in IBM Cloud click this button:
[![Create toolchain](https://cloud.ibm.com/devops/graphics/create_toolchain_button.png)](https://cloud.ibm.com/devops/setup/deploy?env_id=ibm:yp:us-east&repository=https://github.com/kristinochka/tekton-wazi-pipeline&branch=master)