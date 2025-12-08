Part 1:

EC2 Instance Details
AMI information
Instance type
Recommended volume size
Security Group configuration
Security Group configuration justification / explanation
Docker Setup on OS on the EC2 instance
How to install Docker for OS on the EC2 instance
Additional dependencies based on OS on the EC2 instance
How to confirm Docker is installed and that OS on the EC2 instance can successfully run containers
Testing on EC2 Instance
How to pull container image from DockerHub repository
How to run container from image
Note the differences between using the -it flag and the -d flags and which you would recommend once the testing phase is complete
How to verify that the container is successfully serving the web application
Scripting Container Application Refresh
Description of the bash script
How to test / verify that the script successfully performs its taskings
LINK to bash script in repository

Part 2:
Configuring a webhook Listener on EC2 Instance
How to install adnanh's webhook to the EC2 instance
How to verify successful installation
Summary of the webhook definition file
How to verify definition file was loaded by webhook
How to verify webhook is receiving payloads that trigger it
how to monitor logs from running webhook
what to look for in docker process views
LINK to definition file in repository
Configure a webhook Service on EC2 Instance
Summary of webhook service file contents
How to enable and start the webhook service
How to verify webhook service is capturing payloads and triggering bash script
LINK to service file in repository

Part 3:
Configuring a Payload Sender
Justification for selecting GitHub or DockerHub as the payload sender
How to enable your selection to send payloads to the EC2 webhook listener
Explain what triggers will send a payload to the EC2 webhook listener
How to verify a successful payload delivery
How to validate that your webhook only triggers when requests are coming from appropriate sources (GitHub or DockerHub)

Part 4:
Summarize the project contents in the repository
Link to README-CI.md and README-CD.md with a brief summary about what users will find in each document.
