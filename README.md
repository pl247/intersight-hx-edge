### Directions for building an HX Edge cluster using Terraform

1) Edit the intersight_api.auto.tfvars file and change the api_key variable to match yours. 

2) Create a file called SecretKey.txt in the same directory and put the secret key generated from Intersight in there

3) Edit any of the other variables in the site.auto.tfvars to customize your deployment. A few key ones are cluster_name, and the server_names that need to match the server name in your Intersight Operate>Servers tab exactly.

Execute your Terraform plan using the following commands:
   - terraform init
   - terraform plan
   - terraform apply

### API Key
To generate an API key in your intersight got to Gear>Settings>API Keys>Generate API Key using version 2. After clicking Generate, you'll be presented with the API key and Secret Key. Put the Secret Key into the file SecretKey.txt


### Validate and Deploy
Once the Terraform script has completed, all the necessary policies and profiles for your Cisco HyperFlex cluster will appear in your Cisco Intersight management UI, shown in the Policies section and the Profiles section. 
View the new HyperFlex profile in Intersight, and use the Intersight UI to begin a Validation or Deployment of the newly created cluster.



Based on the work of:
https://developer.cisco.com/codeexchange/github/repo/ucs-compute-solutions/terraform-intersight-hyperflex
