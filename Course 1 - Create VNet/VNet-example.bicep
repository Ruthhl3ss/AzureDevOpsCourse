
resource vnet 'Microsoft.Network/virtualNetworks@2020-06-01' = {
  name: 'WE-VNet-001'
  location: resourceGroup().location

  properties: {
    addressSpace: {
      addressPrefixes: [
        '10.0.0.0/16'
      ]
    }
    enableVmProtection: false
    enableDdosProtection: false
    
  }
}
