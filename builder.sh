#!/usr/bin/env bash
####BUILD VARIABLES
SDK_MAN_INIT="${HOME}/.sdkman/bin/sdkman-init.sh"
JDK_NAME="11.0.29-tem"
#Maven is just maven but reusing _NAME for consistency
MAVEN_NAME="3.9.9"
##MAVEN OPTS
#CLI_MAVEN_OPTS="-T 1C"
################
git clone https://github.com/apache/ranger

cd ranger && git apply ../ranger_jdk_11_stash.patch

source "$SDK_MAN_INIT" && \
	sdk use maven "$MAVEN_NAME" && \
	sdk use java "$JDK_NAME" && \
	mvn clean install package
