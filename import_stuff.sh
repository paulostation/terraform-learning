#!/bin/bash
set -e

for i in $(yq '.managed_repo_list[]' repos.yml);
do
    terraform import "module.branch_protection_rules[\"$i\"].github_repository.repository" "$i"
done