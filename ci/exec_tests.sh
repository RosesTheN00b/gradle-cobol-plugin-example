#!/bin/bash

cd project-cobol-fixed-format && gradle check && cd ..
cd project-cobol-free-format && gradle check && cd ..
cd project-cobol-unit-test && gradle check && cd ..
cd project-cobol-unit-test && gradle testUnit computeTestCoverage && cd ..
cat project-cobol-unit-test/build/CobolUnit/coverage.xml
cd project-cobol-integration-test && gradle check && cd ..
cd project-cobol-integration-test && gradle testIntegration computeIntegrationTestCoverage --debug --stacktrace && cd ..
cat project-cobol-integration-test/build/CobolUnit/integration-coverage.xml