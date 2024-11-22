### Data Actions OAuth
There is a restriction in automatically creating an OAuth Client through CX as Code.  It is not possible to access the 'clientSecret' parameter within code, so it is necessary to first have an OAuth Client available, and to provide the clientId and clientSecret fields during the resource creation phase.

This package is optional.  
You can:
1. Run this package to create the OAuth Client used by the Data Actions for authentication
2. Manually create an OAuth Client for your Data Actions authentication
3. Simply use the same OAuth Client Credentials used to create these resources. The problem with this particular approach is that the permissions may be far greater than is required for the Data Actions, so leaving that OAuth Client in place could be a security risk.

The end result is that you will need to provide a set of credentials (client id & client secret) for creating the main body of resources.