#!/usr/bin/env bash

set -xe

mvn test-compile --no-transfer-progress -f pom.xml \
    exec:java \
    -Dexec.mainClass=com.intuit.karate.cli.Main \
    -Dexec.args="target/test-classes" \
    -Dexec.classpathScope="test" 
    "$@"