#!/usr/bin/env bash
git clone --quiet https://github.com/DefectDojo/defectdojo_api.git /tmp/defectdojo_api
pushd /tmp/defectdojo_api > /dev/null || exit
version=$(git rev-list --count --first-parent HEAD)
popd > /dev/null || exit
rm -rf /tmp/defectdojo_api
printf "1.0.%d" "${version}"
