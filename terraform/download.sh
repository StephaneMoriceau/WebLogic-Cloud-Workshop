[ -d ~/WLSHOL-terraform ] && rm -r WLSHOL-terraform

printf "\nCreating directory WLSHOL-terraform ...\n\n"

mkdir WLSHOL-terraform

cd WLSHOL-terraform

printf "Downloading terraform scripts in ~/WLSHOL-terraform ...\n\n"

curl https://raw.githubusercontent.com/StephaneMoriceau/WebLogic-Cloud-Workshop/master/terraform/main.tf --output main.tf

curl https://raw.githubusercontent.com/StephaneMoriceau/WebLogic-Cloud-Workshop/master/terraform/provider.tf --output provider.tf

curl https://raw.githubusercontent.com/StephaneMoriceau/WebLogic-Cloud-Workshop/master/terraform/terraform.tfvars.example --output terraform.tfvars.example

curl https://raw.githubusercontent.com/StephaneMoriceau/WebLogic-Cloud-Workshop/master/terraform/variables.tf --output variables.tf

printf "\nDownload complete.\n\n"
