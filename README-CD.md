# Disclaimer
As outlined in the email to the professor, this only contains documentation as project 4 is not completed.
As a result I can at max only get ~10-11 points and can not get the 6 for the deliverables (as outlined in the rubric) 

# Project Overview
- what is the point of this project and what tools are used:
  - The point of this project is to continue work done in Project 4. This includes: Tagging releases with Git for VC (version Control) as well as using 
webhooks to keep the remote DockerHub reository up to date. I will be using, Git, Webhooks, Docker, and Dockerhub
- Part 4 - Diagramming goes here
   ![myDiagram](https://i.gyazo.com/9a1b874acd5d6d9a11bc9ec2ce950671.png)

# Semantic Versioning

- How to generate a tag in Git:
  - git tag -a v1.0 "First Release of project"
- Behavior of Github workflow
  - What does it do: A workflow is an automated process that runs one or more jobs via a yaml file.
  - When does it trigger: This is triggered by an event in my repository, such as a push, manually, or a set time
- Link to Docker Hub Repository
  - N/A See Disclaimer

# Run Project Locally

- I installed docker using the following guide: https://docs.docker.com/engine/install/ubuntu/
  - I used the specific command:  sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
- how to grab from dockerhub:
  - docker pull myDockerFile
- how to run the container:
  - docker run myDockerFile
- how to build:
  -  docker build -t Bruk04/private-file (what I wouldve made during proj 4)
- how to view the project running in the container:
  - Open browser and go to http://localhost:8089

# DockerHub

- Process to create public repo in DockerHub:
  - 1. Sign into dockerhub
  - 2. Select Repositories
  - 3. Select create repository
- How to authenticate with DockerHub via CLI using Dockerhub credentials:
  - 1. Click on my account
  - 2. Security
  - 3. Generate a new access token
  - 4. Save and copy said token
  - 5. docker login -u Bruk04
  - 6. paste access token for password
 - what credentials would you recommend providing?
   - As shown in my guide I would Rec the access token, as it behaves similiarly to a private key of sorts.
- How to push container to Dockerhub
  - docker push Bruk04/<whatIWantToPush>

# Deployment

- Description of container restart script
  - A restart is the combination of a docker stop and a docker start. I want to stop running, pull the new, and restart using the new template
  - I have this stored in the /var/scripts as it is a script.
- Setting up a webhook on the server
  - How you created you own listener
    - My hook uses:
      1. execute-command "restart.sh"
      2. command-working-directory
  - How you installed the [webhook on GitHub](https://github.com/adnanh/webhook)
    - I installed the webhook using the command found in the projects README: sudo apt-get install webhook
  - How to keep the webhook running if the instance is on
    - You can select Active, and then if the callback url is failing multiple times in a row, set it to inactive.
- Description of Webhook task definition file
- Steps to set up a notifier in GitHub or DockerHub
  - 1. Go to github
  - 2. Settings -> webhooks -> add webhook
  - 3. Type URL for payload recieval
  - 4. Select secret if wanted
  - 5. Select webhook events (only subscribe to necessary ones)
  - 6. Add Webhook
