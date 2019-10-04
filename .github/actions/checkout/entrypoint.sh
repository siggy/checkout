#!/bin/sh

set -eu

echo "$1"

# ref="$1"
# tag=$(echo "$ref" | sed s,^refs/tags/,,)
# name=$(echo "$tag" | sed s,^release/,,)

echo ::set-output "name=tag::$1"
# echo ::set-output "name=name::$name"
