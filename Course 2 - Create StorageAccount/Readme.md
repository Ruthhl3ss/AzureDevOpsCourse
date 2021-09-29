# Course 2 - Create Storage Account with Bicep template

Course 2 is about deploying a Storage Account. In this course you will be adding parameters to the Bicep template, adding a fileshare to the template, adding a Private Endpoint and lastly deploying this template via YAML and Azure DevOps to Microsoft Azure.

In this folder you will find the StorageAccount-example.bicep file which is the starting point of the course. This file contains the very basic deployment of a StorageAccount.

[Microsoft Doc about Bicep Template for StorageAccount Deployment](https://docs.microsoft.com/en-us/azure/templates/microsoft.storage/storageaccounts?tabs=bicep)

You can deploy this template by using the following code in Azure CLI: (change the parameters accordingly)

````Powershell
az login

az account set --subscription <subscription id>

az group create --location <westeurope> --name <biceptesting>

az deployment group create --resource-group <resource-group-name> --template-file <path-to-template> --parameters <parameters>
````

### Objective 1 - Adding Parameters

The first objective is to add parameters. The name and address space of the VNet are now hardcoded in the Bicep template:

![Hardcoded Parameters](https://github.com/Ruthhl3ss/AzureDevOpsCourse/blob/main/Images/VNethardcodedparameters.png)

We would like to use this template for multiple customers without changing the template. This objective can be reached by using parameters.

[Microsoft Doc about Bicep Parameters](https://docs.microsoft.com/en-us/azure/azure-resource-manager/bicep/parameters)


### Objective 2 - Add a FileShare to the Storage Account


### Objective 3 - Add a Private EndPoint to the Storage Account

