# Learning - Terraform
- This is my learning playground
- Everything here is free to use, see the License.MD
- Supported Terraform version = 0.13.0 and above
- Code editor - i used Visual Studio code https://code.visualstudio.com/

**Terraform commands i often use**
1. terraform init
2. terraform validate
3. terraform plan
4. terraform apply
5. terraform graph


**Comments**
* directory that contains tf files considered as a module
* directories can be nested therefore modules within a module
* module naming convention: terraform-provider-nameofthemodule, for example terraform-aws-EKS
* files within the folder: README.md, License, main.tf,variables.tf,outputs.tf
* sub modules in directories, the same pattern without README. 
* usually we have examples directory. 

**My TF Files**
* myTest2 - 2 EC2's (with nginx) in 2 AZs within Region=Ireland, Pulling index.html from s3 bucket, writing logs to s3 bucket, elb and public dns entry (link).
