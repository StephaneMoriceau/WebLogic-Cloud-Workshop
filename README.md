# WebLogic-Cloud-Workshop
Provisioning a Weblogic domain with WebLogic Cloud from OCI Marketplace

Required Keys and OCIDs
Whether you're using an Oracle client (see Software Development Kits and Command Line Interface) or a client you built yourself, you need to do the following:

Create a user in IAM for the person or system who will be calling the API, and put that user in at least one IAM group with any desired permissions. See Adding Users. You can skip this if the user exists already.
Get these items:

RSA key pair in PEM format (minimum 2048 bits). See How to Generate an API Signing Key.
Fingerprint of the public key. See How to Get the Key's Fingerprint.
Tenancy's OCID and user's OCID. See Where to Get the Tenancy's OCID and User's OCID.
Upload the public key from the key pair in the Console. See How to Upload the Public Key.
If you're using one of the Oracle SDKs or tools, supply the required credentials listed above in either a configuration file or a config object in the code. See SDK and CLI Configuration File. If you're instead building your own client, see Request Signatures.
 Important

This key pair is not the SSH key that you use to access compute instances. See Security Credentials.

Both the private key and public key must be in PEM format (not SSH-RSA format). The public key in PEM format looks something like this:

-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQE...
...
-----END PUBLIC KEY-----
How to Generate an API Signing Key
You can use the following OpenSSL commands to generate the key pair in the required PEM format. If you're using Windows, you'll need to install Git Bash for Windows and run the commands with that tool.

If you haven't already, create a .oci directory to store the credentials:

mkdir ~/.oci
Generate the private key with one of the following commands.

Recommended: To generate the key, encrypted with a passphrase you provide when prompted:

openssl genrsa -out ~/.oci/oci_api_key.pem -aes128 2048 
Copy
Note: For Windows, you may need to insert -passout stdin to be prompted for a passphrase. The prompt will just be the blinking cursor, with no text.

openssl genrsa -out ~/.oci/oci_api_key.pem -aes128 -passout stdin 2048
Copy
To generate the key with no passphrase:

openssl genrsa -out ~/.oci/oci_api_key.pem 2048
Copy
Ensure that only you can read the private key file:

chmod go-rwx ~/.oci/oci_api_key.pem
Copy
Generate the public key:

openssl rsa -pubout -in ~/.oci/oci_api_key.pem -out ~/.oci/oci_api_key_public.pem
Copy
Note: For Windows, if you generated the private key with a passphrase, you may need to insert -passin stdin to be prompted for the passphrase. The prompt will just be the blinking cursor, with no text.

openssl rsa -pubout -in ~/.oci/oci_api_key.pem -out ~/.oci/oci_api_key_public.pem -passin stdin
Copy
Copy the contents of the public key to the clipboard using pbcopy, xclip or a similar tool (you'll need to paste the value into the Console later). For example:

cat ~/.oci/oci_api_key_public.pem | pbcopy
Copy
Your API requests will be signed with your private key, and Oracle will use the public key to verify the authenticity of the request. You must upload the public key to IAM (instructions below).

How to Get the Key's Fingerprint
You can get the key's fingerprint with the following OpenSSL command. If you're using Windows, you'll need to install Git Bash for Windows and run the command with that tool.

openssl rsa -pubout -outform DER -in ~/.oci/oci_api_key.pem | openssl md5 -c
Copy
When you upload the public key in the Console, the fingerprint is also automatically displayed there. It looks something like this: 12:34:56:78:90:ab:cd:ef:12:34:56:78:90:ab:cd:ef

Where to Get the Tenancy's OCID and User's OCID
Both OCIDs are in the Console, which is located at https://console.us-ashburn-1.oraclecloud.com. If you don't have a login and password for the Console, contact an administrator. If you're not familiar with OCIDs, see Resource Identifiers.

Tenancy's OCID
Get the tenancy OCID from the Oracle Cloud Infrastructure Console on the Tenancy Details page:

Open the navigation menu, under Governance and Administration, go to Administration and click Tenancy Details.

Navigation menu showing Tenancy Details item
The tenancy OCID is shown under Tenancy Information. Click Copy to copy it to your clipboard.

Tenancy Details page showing the location of the tenancy OCID
User's OCID
Get the user's OCID in the Console on the page showing the user's details. To get to that page:

If you're signed in as the user: Open the Profile menu (User menu icon) and click User Settings.
If you're an administrator doing this for another user: Open the navigation menu. Under Governance and Administration, go to Identity and click Users. Select the user from the list.
How to Upload the Public Key
You can upload the PEM public key in the Console, located at https://console.us-ashburn-1.oraclecloud.com. If you don't have a login and password for the Console, contact an administrator.

Open the Console, and sign in.
View the details for the user who will be calling the API with the key pair:

If you're signed in as this user, click your username in the top-right corner of the Console, and then click User Settings.
If you're an administrator doing this for another user, instead click Identity, click Users, and then select the user from the list.
Click Add Public Key.
Paste the contents of the PEM public key in the dialog box and click Add.
The key's fingerprint is displayed (for example, 12:34:56:78:90:ab:cd:ef:12:34:56:78:90:ab:cd:ef).

Notice that after you've uploaded your first public key, you can also use the UploadApiKey API operation to upload additional keys. You can have up to three API key pairs per user. In an API request, you specify the key's fingerprint to indicate which key you're using to sign the request.

