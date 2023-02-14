# Overview
In this challenge, you will create a storage account in Azure and use Azure Functions to perform actions on the stored data. You will learn how to create, manage, and interact with data stored in Azure storage, and how to use Azure Functions to perform actions on that data.
In the Optional advanced challenge, you will use Azure Computer Vision, Storage Account, and Azure Functions to read text from an image. 
This challenge is designed to help you understand how to integrate multiple Azure services to build a practical solution.

## Goals
- Create a storage account in Azure
- Upload data to the storage account using Azure Functions

## Provided Setup
- An Azure account
- Access to the Azure portal
- ChatGPT access
- An example of an Azure function that uploads data to an Azure Storage account
- Validation script


## Useful References
- Hacker HandBook [link](./HackerHandBook.pdf)

## Tools
- Postman agent [https://www.postman.com/downloads/]
- Visual Studio

## Description
The challenge consists of the following steps:

1. Create a storage account in Azure
2. Create an Azure Functions project in Visual Studio or the Azure portal
3. Write a function to upload a sample data to the storage account

## Success Criteria
- A storage account is created in Azure
- The sample data is uploaded to the storage account using Azure Functions

## Main Challenge
1. Create a storage account in Azure
2. Create an Azure Functions project
3. Write a function to upload sample data to the storage account

## Hints
- To write the functions, you can use ChatGPT's suggestions and code snippets to help guide you.
- The sample data can be a simple text file with the content "Hello World" and a filename of "GPT".
- The Azure Functions project can be created using Visual Studio or the Azure portal.
- To make the storage account, select the option for LRS replication.

## Optional Challenge (More advanced) 
Read text from an image using Azure Computer Vision, Storage Account, and Azure Functions

## Hints

- Use the Azure portal to create the Azure Computer Vision resource
- Use the Azure Functions portal to create the Azure Function
- Use ChatGPT for guidance on integrating with Azure Computer Vision and Azure Storage Account
- To extract text from images using Azure Computer Vision:
  - Use the OCR API to recognize text from the image
  - Use the Read API to detect and recognize text from an image
  - Explore other features of Azure Computer Vision to improve the accuracy of the text recognition

## Validation

- Open CloudShell in the azure portal
- Upload the [validation script](./cohackvalidator.sh)

#### Usage: 
          ./cohackvalidator.sh <storage_account_name> <storage_account_key> <container_name> <function_url>

![alt text](./cohackvalidator.jpg "Validation")

#### Parameters:
#####   - storage_account_name - the name of the Azure Storage account
#####   - storage_account_key - the access key for the Azure Storage account
#####   - container_name - the name of the container to create in the Azure Storage account
#####   - function_url - the URL of the Azure Function that uploads the data to the Azure Storage account
