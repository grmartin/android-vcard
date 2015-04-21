#!/bin/bash

MVN_INSTALLER=org.apache.maven.plugins:maven-install-plugin:2.5.2:install-file

rm -rf target

mvn package -Dmaven.test.skip=true

mvn $MVN_INSTALLER -Dfile=target/android-vcard-1.4.jar\
                   -DgroupId=com.googlecode.android-vcard \
                   -DartifactId=android-vcard \
                   -Dversion=1.4 \
                   -Dpackaging=jar \
                   -DlocalRepositoryPath="$1"
                                                                              
mvn $MVN_INSTALLER -Dfile=target/android-vcard-1.4-sources.jar \
                   -DgroupId=com.googlecode.android-vcard \
                   -Dclassifier=sources              \
                   -DartifactId=android-vcard \
                   -Dversion=1.4 \
                   -Dpackaging=jar \
                   -DlocalRepositoryPath="$1"                                                          