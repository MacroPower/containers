#!/usr/bin/env bash
version=$(curl -s "https://api.ftp-master.debian.org/madison?package=ldap-utils" | grep -E '^\s*ldap-utils\s*\|\s*[0-9]+\.[0-9]+.*\|\s*stable\s*' 2>/dev/null)
version="$(echo $version | awk '{print $3}')"
version="$(echo $version | sed 's/+.*//')"
printf "%s" "${version}"
