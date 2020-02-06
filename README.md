# AtlassianJiraOnEC2
This repository is to deploy Atlassian Jira on AWS EC2 instance with Automated script using Shell, AWS cloudFormation and Ansible

#How to run
aws cloudformation create-stack --template-body file://Template/SetupEC2Instance.yml --stack-name ec2Test1 --parameters ParameterKey=KeyName,ParameterValue=provEC2 ParameterKey=InstanceType,ParameterValue=t2.micro
