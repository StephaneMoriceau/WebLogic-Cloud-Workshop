[ -d WebLogic-Cloud-Workshop ] && rm -r WebLogic-Cloud-Workshop

printf "\nCreating directory WebLogic-Cloud-Workshop ...\n\n"

mkdir WebLogic-Cloud-Workshop

cd WebLogic-Cloud-Workshop

printf "Downloading terraform scripts in ~/WebLogic-Cloud-Workshop ...\n\n"

curl https://raw.githubusercontent.com/StephaneMoriceau/WebLogic-Cloud-Workshop/master/terraform/main.tf --output main.tf

curl https://raw.githubusercontent.com/StephaneMoriceau/WebLogic-Cloud-Workshop/master/terraform/provider.tf --output provider.tf

curl https://raw.githubusercontent.com/StephaneMoriceau/WebLogic-Cloud-Workshop/master/terraform/terraform.tfvars.example --output terraform.tfvars.example

curl https://raw.githubusercontent.com/StephaneMoriceau/WebLogic-Cloud-Workshop/master/terraform/variables.tf --output variables.tf

printf "\nDownload complete.\n\n"
