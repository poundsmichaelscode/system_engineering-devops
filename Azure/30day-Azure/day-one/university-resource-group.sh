#!/bin/bash

# This script creates Azure resource groups for university departments

LOCATION="eastus"

departments=("admissions" "finance" "library" "elearning")

for dept in "${departments[@]}"
do
    RESOURCE_GROUP="rg-university-${dept}-dev"

    echo "Creating $RESOURCE_GROUP..."

    az group create --name "$RESOURCE_GROUP" --location "$LOCATION"

    if [ $? -eq 0 ]; then
        echo "$RESOURCE_GROUP has been created successfully."
    else
        echo "Failed to create $RESOURCE_GROUP."
    fi

    echo "-----------------------------"
done

echo "Script completed."
