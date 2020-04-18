#!/bin/bash

cd project-cobol-fixed-format && ./gradlew check && cd ..
cd project-cobol-free-format && ./gradlew check && cd ..
cd project-cobol-unit-test && ./gradlew check && cd ..
cd project-cobol-unit-test && ./gradlew testUnit computeTestCoverage && cd ..
cat project-cobol-unit-test/build/CobolUnit/coverage.xml
cd project-cobol-integration-test && ./gradlew check && cd ..
cd project-cobol-integration-test && ./gradlew testIntegration computeIntegrationTestCoverage --debug --stacktrace && cd ..
cat project-cobol-integration-test/build/CobolUnit/integration-coverage.xml
