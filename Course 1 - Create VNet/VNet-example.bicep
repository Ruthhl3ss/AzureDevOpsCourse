
param vnetname string = ''

resource vnet 'Microsoft.Network/virtualNetworks@2020-06-01' = {
  name: vnetname
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
