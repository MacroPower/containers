#!/usr/bin/env bash
git clone --quiet https://github.com/kubernetes-client/python.git /tmp/kubernetes-client
pushd /tmp/kubernetes-client > /dev/null || exit
version=$(git rev-list --count --first-parent HEAD)
popd > /dev/null || exit
rm -rf /tmp/kubernetes-client
printf "1.0.%d" "${version}"
