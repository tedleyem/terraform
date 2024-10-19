### Terraform-Playground

## Required AWS packages
- Install [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/installing.html)
- Configure [AWS CLI](https://docs.aws.amazon.com/cli/latest/reference/configure/)
- Please note, Configuring AWS using `aws configure` CLI command, will write the AWS secret and access key to `~/$USER_HOME/.aws/credentials` file and it will used to authenticate the terraform infra creation in AWS.

##  Install and Configure Terraform
- Refer here [for installing terraform](https://www.terraform.io/downloads.html)
- Extract and Add `terraform` executable path to ENV variables

## Terraform setup in Linux based systems
```
wget https://releases.hashicorp.com/terraform/0.12.24/terraform_0.12.24_linux_amd64.zip
unzip terraform_0.12.24_linux_amd64.zip -d terraform /usr/local/bin/
```
If terraform executable stored in another path, make sure the path is added in `$PATH` variable permanently.

## AWS Infrastructure Automation
- We will see How to automate the AWS infrastructure creation using Terraform
- As part of the demo code, we will create a Apache webserver and run a sample website
- Architecture of this server follows the single tier method, wherein we will create only a simple Webserver for demo purpose

## Basic Terminologies in Terraform
- Providers
  - It should be cloud provider or on-premise provider on which we will create our infrastructure and resources
- Resources
  - This indicates the resources like virtual machines, network components, containers we spin-up on the providers
- Tfstate file
  - This is the state of terraform infrastructure created when we run the commands `terraform plan` and `terraform apply`
  - This state file can be stored locally or in a network storage for multi developer environments

## Source Code File Details
- `main.tf` contains the beginning section of terraform code
- So we have to define `terraform` with `required_providers` and we have mentioned `aws` since we are going to create infra in AWS


 


---
##### Resources
* [Terraform Docs](https://developer.hashicorp.com/terraform/docs)
* [Terraform Best Practices](https://www.terraform-best-practices.com/)
* [terraform-docs.io](https://terraform-docs.io/)
* [Amazon EC2 AMI Locator - UBUNTU](https://cloud-images.ubuntu.com/locator/ec2/)

