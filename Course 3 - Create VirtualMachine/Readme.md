# Course 3 - Create Virtual Machine

Course 2 is about deploying a Virtual Machine. In this course you will be adding parameters to the Bicep template, adding a disk to the template, changing the OS to Server 2019/2022, changing the Virtual Network reference and lastly deploying this template via YAML and Azure DevOps to Microsoft Azure.

In this folder you will find the VirtualMachine-example.bicep file which is the starting point of the course. This file contains the very basic deployment of a StorageAccount.

[Microsoft Doc about Bicep Template for Virtual Machine Deployment](https://docs.microsoft.com/en-us/azure/templates/microsoft.compute/virtualmachines?tabs=bicep)

You can deploy this template by using the following code in Azure CLI: (change the parameters accordingly)

````Powershell
az login

az account set --subscription <subscription id>

az group create --location <westeurope> --name <biceptesting>

az deployment group create --resource-group <resource-group-name> --template-file <path-to-template> --parameters <parameters>
````

### Objective 1 - Adding parameters 

The first objective is to add parameters. The name, location, kind, SKU and access tier of the StorageAccount are now hardcoded in the Bicep template:

![Hardcoded Parameters](https://github.com/Ruthhl3ss/AzureDevOpsCourse/blob/main/Images/StorageAccounthardcodedparameters.png)

We would like to use this template for multiple customers without changing the template. This objective can be reached by using parameters. 
Change these values to parameters:

- name
- location
- kind
- SKU
- accesstier

[Microsoft Doc about Bicep Parameters](https://docs.microsoft.com/en-us/azure/azure-resource-manager/bicep/parameters)