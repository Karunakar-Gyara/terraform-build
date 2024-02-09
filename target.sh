#!/bin/bash

TARGETS=("aws_instance.my_instance1")

# Loop through the array and run Terraform destroy for each target
destroy_command= "terrafrom destroy -auto-approve"
for target in "${TARGETS[@]}"; do
    echo $target	
    destroy_command+=" -target="$target"
done
$destroy_command
