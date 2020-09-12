# Learning - Terraform
- This is my learning playground
- Everything here is free to use, see the License.MD
- Supported Terraform version = 0.13.0 and above
- Code editor - i used Visual Studio code https://code.visualstudio.com/
- Registery - https://registry.terraform.io/

**Terraform commands i often use**
1. terraform init
2. terraform validate (validate all the syntax of the tf files)
3. terraform plan
4. terraform apply
5. terraform graph
6. terraform console (allowing short and quick tests)
7. terraform fmt (formats the configuration files, make them look pretty)
8. terraform taint (allow recreation of certain resource)
9. terraform untaint (unmark a tainted resource)
10. terraform workspace
11. terraform plan -var 'variablename=value' (run the plan with this set up)
12. terraform workspace new develop (creates a new workspace named as develop)

**Workspace commands**
1. show - current workspace
2. list - all workspaces
3. select - the one to work with, make 'active'
4. new - workspace
5. delete - workspace

*Example*
terraform workspace new workspace_name
terraform workspace select workspace_name_to_be_active

*use it in configuration by ${terraform.workspace}*


**Comments**
* directory that contains tf files considered as a module
* directories can be nested therefore modules within a module
* module naming convention: terraform-provider-nameofthemodule, for example terraform-aws-EKS
* files within the folder: README.md, License, main.tf,variables.tf,outputs.tf
* sub modules in directories, the same pattern without README. 
* usually we have examples directory. 

**My TF Files**
* myTest2 - 2 EC2's (with nginx) in 2 AZs within Region=Ireland, Pulling index.html from s3 bucket, writing logs to s3 bucket, elb and public dns entry (link).


