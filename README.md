# WebLogic-Cloud-Workshop
Provisioning a Weblogic domain with WebLogic Cloud from OCI Marketplace

# 1. Required Keys and OCIDs
Please execute the following 3 steps documented in https://docs.cloud.oracle.com/en-us/iaas/Content/API/Concepts/apisigningkey.htm:

1. Create a user in IAM for the person or system who will be calling the API, and put that user in at least one IAM group with any desired permissions. See Adding Users. You can skip this if the user exists already.

2. Get these items:

  * RSA key pair in PEM format (minimum 2048 bits).
  * Fingerprint of the public key.
  * Tenancy's OCID and user's OCID.

3. Upload the public key from the key pair in the Console

# 2. Encrypt you WebLogic administrator password
