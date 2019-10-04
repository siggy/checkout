#!/bin/sh

set -eu

echo "PWD"
pwd
echo $GITHUB_WORKSPACE
ls $GITHUB_WORKSPACE
ls /home/runner/work/checkout/checkout

env | sort

echo "$1"

# ref="$1"
# tag=$(echo "$ref" | sed s,^refs/tags/,,)
# name=$(echo "$tag" | sed s,^release/,,)

echo ::set-output "name=tag::$1"
# echo ::set-output "name=name::$name"
