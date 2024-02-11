
#!/bin/sh



echo terraform version

TARGETS=("google_storage_bucket.static")

# Destroy specified targets
for TARGET in "${TARGETS[@]}"
do
    TARGET_LIST+=("-target=${TARGET}")
done
echo ${TARGET_LIST}
# Run terraform destroy with multiple -target options
terraform destroy "${TARGET_LIST[@]}" -auto-approve


