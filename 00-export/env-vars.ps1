# If using Windows PowerShell, run this prior to any Terraform commands
# this will populate the below environment variables used by
# CX as Code
# Example:  ./env-vars.ps1

$env:GENESYSCLOUD_REGION="GC Region - e.g. eu-west-1"
$env:GENESYSCLOUD_OAUTHCLIENT_ID="OAuth Client ID for CX as Code"
$env:GENESYSCLOUD_OAUTHCLIENT_SECRET="OAuth Client Secret for CX as Code"
$env:ARCHY_LOCATION="Archy Location, e.g., mypurecloud.ie"
$env:GENESYSCLOUD_ORG="Label for Org used, e.g. psemeaconsulting03"
$env:ORG_DIVISION="Division you will use, e.g. Home"

# AWS region                    AWS region name     Region in Genesys Cloud login       Archy Location        
# US East (N. Virginia)         us-east-1           Americas (US East)                  mypurecloud.com       
# US East 2 (Ohio)*             us-east-2           FedRAMP                             use2.us-gov-pure.cloud
# US West (Oregon)              us-west-2           Americas (US West)                  usw2.pure.cloud       
# Canada (Central)              ca-central-1        Americas (Canada)                   cac1.pure.cloud       
# South America (São Paulo)     sa-east-1           Americas (São Paulo)                sae1.pure.cloud       
# Europe (Frankfurt)            eu-central-1        EMEA (Frankfurt)                    mypurecloud.de        
# Europe (Ireland)              eu-west-1           EMEA (Dublin)                       mypurecloud.ie        
# Europe (London)               eu-west-2           EMEA (London)                       euw2.pure.cloud       
# Europe (Zurich)               eu-central-2        EMEA (Zurich)                       euc2.pure.cloud       
# Middle East  (UAE)            me-central-1        EMEA (UAE)                          mec1.pure.cloud       
# Asia Pacific (Mumbai)         ap-south-1          Asia Pacific (Mumbai)               aps1.pure.cloud       
# Asia Pacific (Seoul)          ap-northeast-2      Asia Pacific (Seoul)                apne2.pure.cloud      
# Asia Pacific (Sydney)         ap-southeast-2      Asia Pacific (Sydney)               mypurecloud.com.au    
# Asia Pacific (Tokyo)          ap-northeast-1      Asia Pacific (Tokyo)                mypurecloud.jp        
# Asia Pacific (Osaka)          ap-northeast-3      Asia Pacific (Osaka)                apne3.pure.cloud   