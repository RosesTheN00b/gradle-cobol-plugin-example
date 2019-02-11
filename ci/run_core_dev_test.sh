#! /bin/bash
set -e

if cobc -h ; then
    echo "Command succeeded"
else
    sh ci/install_requirements.sh > install.log
fi

sh ci/pull_plugin_sources.sh

cd gradle-cobol-plugin/gradle-cobol-plugin-core
git checkout dev
cd ../..

sh ci/build_plugin.sh
sh ci/install_plugin.sh
sh ci/exec_tests.sh