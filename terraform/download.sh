[ -d ~/WebLogic-Cloud-Workshop ] && rm -r WebLogic-Cloud-Workshop

printf "\nCreating directory WLSHOL-terraform ...\n\n"

mkdir WLSHOL-terraform

cd WLSHOL-terraform

printf "Downloading terraform scripts in ~/WLSHOL-terraform ...\n\n"

curl https://raw.githubusercontent.com/StephaneMoriceau/WebLogic-Cloud-Workshop/update-section%235/terraform/main.tf --output main.tf

curl https://raw.githubusercontent.com/StephaneMoriceau/WebLogic-Cloud-Workshop/update-section%235/terraform/provider.tf --output provider.tf

curl https://raw.githubusercontent.com/StephaneMoriceau/WebLogic-Cloud-Workshop/update-section%235/terraform/terraform.tfvars.example --output terraform.tfvars.example

https://raw.githubusercontent.com/StephaneMoriceau/WebLogic-Cloud-Workshop/update-section%235/terraform/variables.tf --output variables.tf

printf "\nDownload complete.\n\n"
