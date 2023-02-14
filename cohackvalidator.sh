#!/bin/bash

# This validation script was created by ChatGPT.

# Prompt for the necessary parameters
read -p "Enter the storage account name: " storage_account_name
read -p "Enter the storage account key: " storage_account_key
read -p "Enter the container name: " container_name
read -p "Enter the function URL: " function_url

# Check if the storage account exists
if ! az storage account show -n $storage_account_name &>/dev/null; then
    echo "Error: Storage account '$storage_account_name' does not exist"
    exit 1
fi

# Check if the container exists
if ! az storage container show -n $container_name --account-name $storage_account_name --account-key $storage_account_key &>/dev/null; then
    echo "Error: Container '$container_name' does not exist"
    exit 1
fi

# Task 1: Check if the container exists
echo "Task 1: Checking if the container exists"

if az storage container show -n $container_name --account-name $storage_account_name --account-key $storage_account_key &>/dev/null; then
    echo "Success: Container '$container_name' exists"
    score1=10
else
    echo "Error: Container '$container_name' does not exist"
    score1=0
fi

# Task 2: Upload a sample file to the storage account using Azure Functions
echo "Task 2: Uploading a sample file to the storage account using Azure Functions"

echo "Hello World" > ChatGPTv.txt

# Upload a sample file to the storage account using the Azure Function
curl -X POST -F "file=@ChatGPTv.txt" "$function_url"

if [ $? -eq 0 ]; then
    echo "Success: File uploaded to storage account using Azure Functions"
    score2=10
else
    echo "Error: Failed to upload file to storage account using Azure Functions"
    score2=0
fi

echo "Task 1 score: $score1/10"
echo "Task 2 score: $score2/10"
total_score=$((score1 + score2))
echo "Total score: $total_score/20"

