echo "Enter the stack name to be created"
read sName

StackName=$sName

echo "$sName Stack creation in progress..."

stackID=$(aws cloudformation create-stack --stack-name $sName --template-body file://AWSCloudFormationTemplates/SetupEC2.yml)
aws cloudformation wait stack-create-complete --stack-name $sName

echo $stackID

if [ -z $stackID ]; then
	echo 'Error. Stack creation failed !!!'
	exit 1
else
	echo "Stack Creation Done !!!"
	#Ansible script can be run here.
fi
