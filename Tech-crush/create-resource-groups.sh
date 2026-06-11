#!/bin/bash

# This script creates Azure Resource Groups automatically
# for Dev, Test, UAT, and Production environments.

# Ask the user to enter the project name
echo "Enter the project name:"
read PROJECT_NAME

# Set the Azure location
LOCATION="eastus"

# Create Resource Group for Development
az group create --name "${PROJECT_NAME}-Dev-RG" --location "$LOCATION"

# Create Resource Group for Testing
az group create --name "${PROJECT_NAME}-Test-RG" --location "$LOCATION"

# Create Resource Group for User Acceptance Testing
az group create --name "${PROJECT_NAME}-UAT-RG" --location "$LOCATION"

# Create Resource Group for Production
az group create --name "${PROJECT_NAME}-Production-RG" --location "$LOCATION"

echo "All Resource Groups have been created successfully."


  
