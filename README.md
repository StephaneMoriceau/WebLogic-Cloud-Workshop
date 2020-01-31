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

# 3. Create an SSH Key 

Create a secure shell (SSH) key pair so that you can access the compute instances in your Oracle WebLogic Server domains.

A key pair consists of a public key and a corresponding private key. When you create a domain using Oracle WebLogic Cloud, you specify the public key. You then access the compute instances from an SSH client using the private key.

On a UNIX or UNIX-like platform, use the ssh-keygen utility. For example:

ssh-keygen -b 2048 -t rsa -f mykey

cat mykey.pub

On a Windows platform, you can use the PuTTY Key Generator utility. See Creating a Key Pair (https://www.oracle.com/pls/topic/lookup?ctx=en/cloud/paas/weblogic-cloud/user&id=oci_general_keypair) in the Oracle Cloud Infrastructure documentation.

# 4. Install terraform and terraform OCI provider on your laptop

# 5. Clone this github on your laptop

# 6. Update the terraform configuration file with the specific of your environment

# 7. Create the required infrasture to provision a WebLogic Cloud domain from the OCI Marketplace

# 8. Provision a WebLogic Cloud domain from the OCI Markeplace


