# Course 1 - Create VNet with Bicep template

Course 1 is about deploying a Virtual Network. In this course you will be adding parameters to the Bicep template, adding a subnet to the template, adding a route table and lastly deploying this template via YAML and Azure DevOps to Microsoft Azure.

In this folder you will find the VNet-example.bicep file which is the starting point of the course. This file contains the very basic deployment of a VNet.

[Microsoft Doc about Bicep Template for VNet Deployment](https://docs.microsoft.com/en-us/azure/templates/microsoft.network/virtualnetworks?tabs=bicep)

You can deploy this template by using the following code: (change the parameters accordingly)

````Powershell
New-AzResourceGroupDeployment -TemplateFile '.\PATH TO FILE\VNet-example.bicep' -ResourceGroupName RESOURCEGROUPNAME
````

### Objective 1 - Adding Parameters

The first objective is to add parameters. The name and address space of the VNet are now hardcoded in the Bicep template:

![Hardcoded Parameters](https://github.com/Ruthhl3ss/AzureDevOpsCourse/blob/main/Images/BicepExtension.png)


### Objective 2 - Adding Subnet


### Objective 3 - Adding Routing Table



### Objective 4 - Deploy Template via YAML