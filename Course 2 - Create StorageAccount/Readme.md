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

The first objective is to add parameters. The name and address space of the StorageAccount are now hardcoded in the Bicep template:

![Hardcoded Parameters](https://github.com/Ruthhl3ss/AzureDevOpsCourse/blob/main/Images/StorageAccounthardcodedparameters.png)

We would like to use this template for multiple customers without changing the template. This objective can be reached by using parameters.

[Microsoft Doc about Bicep Parameters](https://docs.microsoft.com/en-us/azure/azure-resource-manager/bicep/parameters)


### Objective 2 - Add a FileShare to the Storage Account

The second objective is to a FileShare to the Bicep template. This can be achieved in multiple ways. You can add a resource to the bicep template or you can add it to StorageAccount resource within the Bicep template. **Remember to use Parameters**

[Microsoft Doc about Bicep Template for FileShare Deployment](https://docs.microsoft.com/en-us/azure/templates/microsoft.storage/storageaccounts/fileservices/shares?tabs=bicep)


### Objective 3 - Add a Private EndPoint to the Storage Account

**This objective is optional**. If you are way ahead of the rest of colleagues in the class, try to add a private endpoint to your StorageAccount deployment. This requires another resource in the Bicep Template of the StorageAccount . 

[Microsoft Doc about Bicep Template for Route Table Deployment](https://docs.microsoft.com/en-us/azure/templates/microsoft.network/routetables?tabs=bicep)

**Important**, you need to assign a storage account, subnet and group id to the private endpoint in order to complete the deployment.


### Objective 4 - Deploy Template via YAML

This is, at least for me, the most important objective. This where it all comes together. We are going to automate the deployment process by using a YAML pipeline in Azure DevOps.

We have the Bicep template which contains the StorageAccount + FileShare( + Private Endpoint). We have added parameters to the template so we can use it for multiple customers. Now we are going to deploy this template via Azure DevOps.

Use this blog to create the Pipeline. **There is a starter YAML File in this repository called StorageAccount.yml use this as your starting point!**


[Blog by 4bes.nl about deploying Bicep Templates via Azure DevOps](https://4bes.nl/2021/04/18/step-by-step-deploy-bicep-with-azure-devops-pipelines/)

In the "SupportingFiles" Folder, you will find the ARM template for the empty resource group.