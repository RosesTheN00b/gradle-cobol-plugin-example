#! /bin/bash
set -e

cobc -h || sh ci/install_requirements.sh > install.log

sh ci/pull_plugin_sources.sh

cd gradle-cobol-plugin/gradle-cobol-plugin-unittest-extension
git checkout dev
cd ../..

sh ci/build_plugin.sh
sh ci/install_plugin.sh
sh ci/exec_tests.sh
