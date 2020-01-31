# WebLogic-Cloud-Workshop
Provisioning a Weblogic domain with WebLogic Cloud from OCI Marketplace

# 0. Provision a Oracle Cloud free trial instance

# 1. Required Keys and OCIDs
Please execute the following 3 steps as documented in https://docs.cloud.oracle.com/en-us/iaas/Content/API/Concepts/apisigningkey.htm:

1. Create a user in IAM for the person or system who will be calling the API, and put that user in at least one IAM group with any desired permissions. See Adding Users. You can skip this if the user exists already.

2. Get these items:

  * RSA key pair in PEM format (minimum 2048 bits).
  * Fingerprint of the public key.
  * Tenancy's OCID and user's OCID.

Note: keep a copy [red]

3. Upload the public key from the key pair in the Console

# 2. Encode the WebLogic administrator password in base64 format

1. Choose a password with the following requirements

2. Encode the password in base64 format

  For example, on Linux:
  echo -n 'Your_Password' | base64

3. Keep a copy of the encoded password

# 3. Install terraform and terraform OCI provider on your laptop

# 4. Clone this github on your laptop

# 5. Update the terreform configuration file with the specific of your environment

# 6. Create the required infrasture to provision a WebLogic Cloud domain from the OCI Marketplace

# 7. Provision a WebLogic Cloud domain from the OCI Markeplace


