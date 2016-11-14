AZURE_RESOURCE = 'https://management.azure.com'.freeze
DEFAULT_ADDRESS_PREFIXES = ['10.2.0.0/16'].freeze
SUBNET = 'Subnet'.freeze
PUBLIC_IP = 'Public-IP-Address'.freeze
NETWORK_SECURITY_GROUP = 'Network-Security-Group'.freeze
STANDARD_STORAGE = 'Standard'.freeze
PREMIUM_STORAGE = 'Premium'.freeze
ALLOWED_STANDARD_REPLICATION = %w(LRS ZRS GRS RAGRS).freeze
API_VERSION = '2016-06-01'.freeze
FAULT_DOMAIN_COUNT = 3.freeze
UPDATE_DOMAIN_COUNT = 5.freeze
WINDOWS = 'windows'.freeze
VPN = 'Vpn'.freeze
MICROSOFT_PEERING = 'MicrosoftPeering'.freeze
RESOURCE_GROUP_NAME = 4
RESOURCE_PROVIDER_NAMESPACE = 6
RESOURCE_TYPE = 7
RESOURCE_NAME = 8
AZURE_ENDPOINTS = 'azureEndpoints'.freeze
EXTERNAL_ENDPOINTS = 'externalEndpoints'.freeze
NESTED_ENDPOINTS = 'nestedEndpoints'.freeze
GLOBAL = 'global'.freeze
WORKER_THREAD_COUNT = 8
VM_NAME_POSITION = 8

# Set a CLOUD value from 'Azure', 'AzureChina', 'AzureGermanCloud' and 'AzureUSGovernment'
CLOUD = 'Azure'.freeze

AZURE_GLOBAL_RM_ENDPOINT_URL = 'https://management.azure.com/'.freeze
AZURE_CHINA_RM_ENDPOINT_URL = 'https://management.chinacloudapi.cn'.freeze
GERMAN_CLOUD_RM_ENDPOINT_URL = 'https://management.microsoftazure.de'.freeze
US_GOVERNMENT_RM_ENDPOINT_URL = 'https://management.usgovcloudapi.net'.freeze

LOCATION = 'eastus'.freeze

# State of the copy operation
COPY_STATUS = {
  # The copy completed successfully.
  SUCCESS: 'success',
  # The copy is in progress
  PENDING: 'pending'
}.freeze
