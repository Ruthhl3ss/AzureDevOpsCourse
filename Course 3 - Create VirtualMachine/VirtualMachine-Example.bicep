
param subnetName string = ''
param virtualnetworkid string = ''


@secure()
param adminPassword string
param adminUsername string = 'W10Admin'


var subnetRef = '${virtualnetworkid}/subnets/${subnetName}'


resource networkInterfaceName_resource 'Microsoft.Network/networkInterfaces@2018-10-01' = {
  name: 'W10BuildNIC'
  location: 'westeurope'
  properties: {
    ipConfigurations: [
      {
        name: 'ipconfig1'
        properties: {
          subnet: {
            id: subnetRef
          }
          privateIPAllocationMethod: 'Dynamic'
        }
      }
    ]
  }
  dependsOn: []
}

resource virtualMachineName_resource 'Microsoft.Compute/virtualMachines@2020-12-01' = {
  name: 'W10Build'
  location: 'westeurope'
  properties: {
    hardwareProfile: {
      vmSize: 'Standard_B4ms'
    }
    storageProfile: {
      osDisk: {
        createOption: 'FromImage'
        managedDisk: {
          storageAccountType: 'Premium_LRS'
        }
      }
      imageReference: {
        publisher: 'MicrosoftWindowsDesktop'
        offer: 'Windows-10'
        sku: '20H2-evd'
        version: 'latest'
      }
    }
    networkProfile: {
      networkInterfaces: [
        {
          id: networkInterfaceName_resource.id
        }
      ]
    }
    osProfile: {
      computerName: 'W10Build'
      adminUsername: adminUsername
      adminPassword: adminPassword
      windowsConfiguration: {
        enableAutomaticUpdates: false
        provisionVMAgent: true
        patchSettings: {
          patchMode: 'Manual'
        }
      }
    }
    licenseType: 'Windows_Client'
  }
  dependsOn: [
    networkInterfaceName_resource
  ]
}

output adminUsername string = adminUsername
