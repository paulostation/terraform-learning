#!/bin/bash
set -x
set -e

for i in $(yq '.managed_repo_list[]' repos.yml);
do  
    echo "$i"
 
    bash -c "terraform import -var-file=\"terraform.tfvars\" 'module.branch_protection_rules[\"tweet-analysis\"].github_repository.repository' tweet-analysis"
done