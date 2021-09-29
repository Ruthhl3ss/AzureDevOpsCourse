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

![Hardcoded Parameters](https://github.com/Ruthhl3ss/AzureDevOpsCourse/blob/main/Images/VNethardcodedparameters.png)

We would like to use this template for multiple customers without changing the template. This objective can be reached by using parameters.

[Microsoft Doc about Bicep Parameters](https://docs.microsoft.com/en-us/azure/azure-resource-manager/bicep/parameters)


### Objective 2 - Adding Subnet

The second objective is to a subnet to the Bicep template. This can be achieved in multiple ways. You can add a resource to the bicep template or you can add it to VNet resource within the Bicep template. **Remember to use Parameters**

[Microsoft Doc about Bicep Template for Subnet Deployment](https://docs.microsoft.com/en-us/azure/templates/microsoft.network/virtualnetworks/subnets?tabs=bicep)


### Objective 3 - Adding Routing Table

**This objective is optional**. If you are way ahead of the rest of colleagues in the class, try to add a routing table to your VNet deployment. This requires another resource in the Bicep Template of the VNet. 

[Microsoft Doc about Bicep Template for Route Table Deployment](https://docs.microsoft.com/en-us/azure/templates/microsoft.network/routetables?tabs=bicep)

**Important**, since there is probably no Virtual Appliance in your subnet, create a simple route for 0.0.0.0/0 to be routed to 'Virtual Network' and use Bicep to connect it the subnet created in Objective 2


### Objective 4 - Deploy Template via YAML

