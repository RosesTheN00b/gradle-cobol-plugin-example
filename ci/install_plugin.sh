#!/bin/bash
set -e
rm project-cobol-fixed-format/settings.gradle
cp ci/settings.gradle.prototype project-cobol-fixed-format/settings.gradle

rm project-cobol-free-format/settings.gradle
cp ci/settings.gradle.prototype project-cobol-free-format/settings.gradle

rm project-cobol-integration-test/settings.gradle
cp ci/settings.gradle.prototype project-cobol-integration-test/settings.gradle

rm project-cobol-unit-test/settings.gradle
cp ci/settings.gradle.prototype project-cobol-unit-test/settings.gradle