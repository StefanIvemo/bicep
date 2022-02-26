// $1 = firewallPolicy
// $2 = 'name'
// $3 = location
// $4 = true
// $5 = Alert

param location string

resource firewallPolicy 'Microsoft.Network/firewallPolicies@2021-05-01' = {
  name: 'name'
  location: location
  properties: {
    sku: {
      tier: 'Standard'
    }
    dnsSettings: {
      enableProxy: true
    }
    threatIntelMode: ''Alert''
//@[23:28) [BCP019 (Error)] Expected a new line character at this location. (CodeDescription: none) |Alert|
  }
}
// Insert snippet here

