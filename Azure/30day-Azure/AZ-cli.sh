#!/bin/bash

echo "===== Azure Account Information ====="
az account show --output table

echo ""
echo "===== Resource Groups ====="
az group list --output table

echo ""
echo "===== Azure Locations ====="
az account list-locations --output table

echo ""
echo "===== Creating Resource Group ====="
az group create \
    --name rg-michael-lab \
    --location uksouth

echo ""
echo "===== Verifying Resource Group ====="
az group show \
    --name rg-michael-lab \
    --output table

echo ""
read -p "Press Enter to delete the resource group..."

echo ""
echo "===== Deleting Resource Group ====="
az group delete \
    --name rg-michael-lab \
    --yes

echo "Lab completed successfully!"
