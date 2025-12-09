# Project 5 - Continuous Deployment

**REMEMBER THIS HAS TO BE AT THE TOP**

## Part 4:
Summarize the project contents in the repository
Link to README-CI.md and README-CD.md with a brief summary about what users will find in each document.
-ADD DIAGRAM

---

## Part 1
- AMI: Ubuntu with HVM64 = ami-09e67e426f25ce0d7
- The instance is t2.medium, that has 2 CPU cores and 4 GB RAM.
- The recommended volume is 30 GB of storage.
- Security Group: SSH port 22 and HTTP port 80
- The security group only lets in traffic we need, so SSH is for managing the server and HTTP is for dealing with web requests. All other traffic cannot get in so everything is safe.

- To install Docker, run these commands:
```
sudo apt-get update
sudo apt-get install
sudo systemctl enable docker
sudo systemctl start docker
```
- Additional dependencies: I don't think there are any
- To confirm Docker is installed and it can successfully run containers, run the commands:
```
docker --version
docker run hello-world
```
- To pull container image from DockerHub repository, run the command:
```
docker pull rhameed/hameed-project3:latest
```
- To run container from image:
```
docker run -d -p 80:80 --name project5 --restart always rhameed/hameed-project3:latest
```
- The -it flag is for interacting with the container directly and the -d flag is for running the container in the background
- To verify that the container is successful, I went to http://98.94.31.189/ and I saw this page:
[Successful page](itworks!.png)

- The bash script stops and removes the previously running container, then pulls the latest image, and runs the new container detached.
- How to test / verify that the script successfully performs its taskings
- bash script can be found in Project-5/deployment/script.ssh
- Issue I ran into: when running the script I saw this error (forgot to take a picture):
  ```
  Error response from daemon: No such container: project5 Error response from daemon: No such container: project5 latest: Pulling from rhameed/hameed-project3 Digest: sha256:7e93dc10aef11c48f4984691bb5bdbdc7b2c4961f13bb6aca2280ae6788a5c83 Status: Image is up to date for rhameed/hameed-project3:latest docker.io/rhameed/hameed-project3:latest 982e62361be580c53b7cfc30b9988d3ee36c9e3f04b16f504920cf18dc3952da docker: Error response from daemon: driver failed programming external connectivity on endpoint project5 (61bc37cedae330c5c2aa34063bd8e22f474274d587cf35e5fda08da78ea997ee): Bind for 0.0.0.0:80 failed: port is already allocated.
  ```
This means that port 80 was already being used on the instance. So, I had to run `docker ps` and then manually stop and remove the running container. I guess my script didn't complete **every** task, since I had to manually stop and remove.

---

## Part 2:
- To install adnanh's webhook, use the command;
```
sudo apt-get install webhook
```
- To verify successful installation:
```
webhook -version
```
Mine printed out: webhook version 2.6.9
- Summary of the webhook definition file
- How to verify definition file was loaded by webhook
- How to verify webhook is receiving payloads that trigger it
- how to monitor logs from running webhook
what to look for in docker process views
LINK to definition file in repository
Configure a webhook Service on EC2 Instance
Summary of webhook service file contents
How to enable and start the webhook service
How to verify webhook service is capturing payloads and triggering bash script
LINK to service file in repository

---

## Part 3:
Justification for selecting GitHub or DockerHub as the payload sender
How to enable your selection to send payloads to the EC2 webhook listener
Explain what triggers will send a payload to the EC2 webhook listener
How to verify a successful payload delivery
How to validate that your webhook only triggers when requests are coming from appropriate sources (GitHub or DockerHub)

