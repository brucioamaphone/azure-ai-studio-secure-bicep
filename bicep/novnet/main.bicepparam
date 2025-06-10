using './main.bicep'

param prefix = 'azaibc'
param suffix = 'T001'
param userObjectId = '4b3228e4-11cc-456a-bc70-20c49eb5b82c'
param keyVaultEnablePurgeProtection = false
param acrEnabled = false
param nspEnabled = false
param openAiDeployments = [
  {
    model: {
      name: 'text-embedding-ada-002'
      version: '2'
    }
    sku: {
      name: 'Standard'
      capacity: 10
    }
  }
  {
    model: {
      name: 'gpt-4o'
      version: '2024-05-13'
    }
    sku: {
      name: 'GlobalStandard'
      capacity: 10
    }
  }
]
param tags = {
  environment: 'development'
  project: 'bicep'
}
