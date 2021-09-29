# Course 1 - Create VNet with Bicep template

Course 1 is about deploying a Virtual Network. In this course you will be adding parameters to the Bicep template, adding a subnet to the template, adding a route table and lastly deploying this template via YAML and Azure DevOps to Microsoft Azure.

In this folder you will find the VNet-example.bicep file which is the starting point of the course. This file contains the very basic deployment of a VNet. 

You can deploy this template by using the following code: (change the parameters accordingly)

````Powershell
New-AzResourceGroupDeployment -TemplateFile '.\PATH TO FILE\VNet-example.bicep' -ResourceGroupName RESOURCEGROUPNAME
````

### Objective 1 - Adding Parameters




### Obectject 2 - Adding Subnet