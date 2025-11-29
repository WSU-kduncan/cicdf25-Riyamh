*HAS TO BE AT THE TOP*Part 4 - Project Description & Diagram
$Continuous Integration Project Overview
 - What is the goal of this project
 - What tools are used in this project and what are their roles
 - Diagram of project
 - [If applicable] What is not working in this project

$Resources Section
 - Note: this can be at document top, scattered within document as resources were used, or placed at bottom
 - Add resources used in the project by linking them and making a statement of how it was used. If generative AI was used, state which platform and what prompts were given and again, a statement of how it was used.

1. Part 1 - Create a Docker container image
 - Explain and link to site content-> My content can be found in cicdf25-Riyamh/Project-4/[web-content](https://github.com/WSU-kduncan/cicdf25-Riyamh/tree/main/Project-4/web-content) folder
 - Explain and link Dockerfile-> Dockerfile can be found in cicdf25-Riyamh/[Dockerfile](https://github.com/WSU-kduncan/cicdf25-Riyamh/blob/main/Dockerfile) 
 - How to build image from the repo Dockerfile (include tagging requirements when planning to use DockerHub for container image repo-> To build an image from Dockerfile you have to run the command 
```docker build -t rhameed/hameed-project3:Project4```
 - How to run container that'll serve web application from image built by Dockerfile -> To run the container, you have to run the command
```docker run -p 8080:8080 rhameed/hameed-project3:Project4```
Then go to [localhost:8080](http://localhost:8080) and you see a page that says "It works!" (remember insert screenshot)

2. Part 2 - GitHub Actions and DockerHub
$Configuring GitHub Repository Secrets:
 - How to create a PAT for authentication (and recommended PAT scope for this project)-> The PAT can be created in the DockerHub settings and the recommended scope is read and write so that you can pull and push images. 
 - How to set repository Secrets for use by GitHub Actions-> To set up repo Secrets, you have to go to you GitHub repo and then click settings-> Secrets and variables -> Actions. Then click to create a new repo Secret and then set the name and Secret.  
 - Describe the Secrets set for this project-> For this project, the Secrets I set are DOCKER_USERNAME and DOCKER_TOKEN, which is the DockerHub PAT.  

$CI with GitHub Actions
 - Explanation of workflow trigger-> What the triggers the workflow is when a Git tag is pushed (Honorable Mention: Semantic Versioning-> v1.1.2, v1.2.0, v1.3.0, etc)
 - Explanation of workflow steps-> First, the workflow checks out the repo, then sets up Buildx, logs into DockerHub, reads the metadata, then builds and pushes the image with the tags. 
 - Explanation / highlight of values that need updated if used in a different repository; changes in workflow, changes in repository->
 - Link to workflow file in your GitHub repository-> Workflow file can be found in cicdf25-Riyamh/.github/workflows/[docker-workflows.yml](https://github.com/WSU-kduncan/cicdf25-Riyamh/blob/main/.github/workflows/docker-workflows.yml)

$Testing & Validating
 - How to test that your workflow did its tasking-> To make sure that workflow did its job you have to click on "Actions" and watch it update its status to success, and then it'll show the tag next to it. Workflow had one job and it was a success!
 - How to verify that the image in DockerHub works when a container is run using the image-> To verify on DockerHub, you have to pull the image first using the command ```docker pull rhameed/hameed-project3:1.3.0```
Then run, ```docker run -p 8080:8080 rhameed/hameed-project3:1.3.0```, and go to [localhost:8080](http://localhost:8080). 
 - Link to your DockerHub repository-> DockerHub repo (https://hub.docker.com/repository/docker/rhameed/hameed-project3/general)

3. Part 3 - Semantic Versioning
$Generating tags
 - How to see tags in a git repository-> To see that tags you have, use the command ```git tag```
 - How to generate a tag in a git repository-> To make a new tag, use the command ```git tag v1.3.0```
 - How to push a tag in a git repository to GitHub-> To push a tag, use the command ```git tag origin v1.3.0```

$Semantic Versioning Container Images with GitHub Actions
 - Explanation of workflow trigger->
 - Explanation of workflow steps->
 - Explanation / highlight of values that need updated if used in a different repository; changes in workflow, changes in repository->
 - Link to workflow file in your GitHub repository->

$Testing & Validating
 - How to test that your workflow did its tasking->
 - How to verify that the image in DockerHub works when a container is run using the image->
 - Link to your DockerHub repository with evidence of the tag set->
