# Course 3 - Create Virtual Machine

Course 3 is about deploying a Virtual Machine. In this course you will be adding parameters to the Bicep template, adding a disk to the template, changing the OS to Server 2019/2022, changing the Virtual Network reference and lastly deploying this template via YAML and Azure DevOps to Microsoft Azure.

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

The first objective is to add parameters. The name, location, VMSize and StorageAccountTier of the StorageAccount are now hardcoded in the Bicep template:

![Hardcoded Parameters](https://github.com/Ruthhl3ss/AzureDevOpsCourse/blob/main/Images/VMhardcodedparameters.png)

We would like to use this template for multiple customers without changing the template. This objective can be reached by using parameters. 
Change these values to parameters:

- name
- location
- VMSize
- StorageAccountType
- Publisher
- Offer
- SKU
- version
- Computername

[Microsoft Doc about Bicep Parameters](https://docs.microsoft.com/en-us/azure/azure-resource-manager/bicep/parameters)


### Objective 2 - Adding Disk

The second objective is adding a disk to the Virtual Machine. We need to store some data on a extra disk, in order to do so the disk needs te be added.

You can find the information for adding a disk in the Bicep virtual machine template on the Microsoft Docs:

[Microsoft Doc about Bicep Template for Virtual Machine Deployment](https://docs.microsoft.com/en-us/azure/templates/microsoft.compute/virtualmachines?tabs=bicep)


### Objective 3 - Changing the Operating System

We would like to use this template to deploy a Windows Server 2019/2022 Virtual Machine. This can be done by changing these parameters:

- Publisher
- Offer
- SKU
- version

### Objective 4 - Changing the Virtual Network reference 

The current reference in the Bicep template for the virtual network is using a Resource ID, for example:

/subscriptions/XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXX/resourceGroups/TemplateTesting/providers/Microsoft.Network/virtualNetworks/WE-VNet-002

It would be better if only the name of the Virtual Network needed to be entered, for example:

WE-VNet-002

[Bicep References about existing Resources](https://ochzhen.com/blog/reference-new-or-existing-resource-in-azure-bicep)

### Objective 5 - Deploy Template via YAML

This is, at least for me, the most important objective. This where it all comes together. We are going to automate the deployment process by using a YAML pipeline in Azure DevOps.

We have the Bicep template which contains the VirtualMachine + Additional Disk. We have added parameters to the template so we can use it for multiple customers. Now we are going to deploy this template via Azure DevOps.

Use this blog to create the Pipeline. **There is a starter YAML File in this repository called VirtualMachine.yml use this as your starting point!**


[Blog by 4bes.nl about deploying Bicep Templates via Azure DevOps](https://4bes.nl/2021/04/18/step-by-step-deploy-bicep-with-azure-devops-pipelines/)

In the "SupportingFiles" Folder, you will find the ARM template for the empty resource group.