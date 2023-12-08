<h1>Project Overview</h1>
Provide a high-level overview of your project, including its purpose and goals. </br>


<h1>Prerequisites</h1>
1-Terraform installed on your local machine.</br>
2-AWS account with appropriate IAM permissions.</br>
3-Jenkins server set up.</br>
4-AWS SES account with verified email address.</br>

<h1>Workspace Setup</h1>
1. Create two workspaces: </br>
a. dev</br>
b.prod</br>
2. Create two variable definition files (dev.tfvars and prod.tfvars) for the two environments, and populate them.</br>
 with the required variables and values. </br>

<h1>Terraform Configuration</h1>
1. Separate network resources into a network module for better organization.</br>
2. Apply your Terraform code to create two environments:</br>
a. us-east-1 </br>
b. eu-central-1</br>
3. Use local-exec provisioner in your Terraform code to print the public IP address of the bastion EC2 instance.</br>
4. Upload your infrastructure code to this GitHub project for version control. </br>

<h1>Jenkins Pipeline</h1>
1-Create a Jenkins image with Terraform installed inside it. You can use the provided Dockerfile in the repository.</br>
2-Create a Jenkins pipeline that accepts an env-param as a parameter. This parameter specifies the environment to</br>
apply the Terraform code to (dev or prod).</br>
3-Configure the Jenkins pipeline to trigger Terraform execution based on the selected environment parameter.</br>

<h1>Email Notification</h1>
1-Verify your email in Amazon SES (Simple Email Service).</br>
2-Create a Lambda function that sends email notifications using SES.</br>
3-Set up an event trigger, such as an S3 bucket event notification, to detect changes in the Terraform state file,</br>
 When changes are detected, trigger the Lambda function to send an email notification.</br>
