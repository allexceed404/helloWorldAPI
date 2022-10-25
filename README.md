# Technical Assignment 1

## Hello World App

### Description
This is a basic app that greets you with **Hello, World!**.  
The app is a .NET WebAPI and has been written in C#.  
It can be accessed by running an instance on local machine and also through the service running on GCP.

### How to access the app
- To run the app on local machine
    - Clone the repository and navigate to the folder in a terminal
    - Execute the following command
        ```Powershell
            docker-compose up
        ```
    - The app will now be accessible on [`http://localhost:3000`](http://localhost:3000)
    - To close the app execute the following command in a terminal
        ```Powershell
            docker-compose down
        ```
- To access the app through GCP service, visit [`http://35.232.158.38/`](http://35.232.158.38/)

### Specifications
Develop one API endpoint that accepts a GET call without parameters and returns a “Hello, world!” message.  
The HTTP handler should be developed in C#, Dockerized, and deployed to the target location through an automated CI/CD pipeline.

### Assignment Tasks
1. ~~Create a cloud Git repository (Citrix’s Bitbucket) and upload to it a README file with the Assignment description~~

2. ~~Develop the HTTP handler locally and upload the Git repository~~

3. ~~Dockerize it so that anybody who can get the code can run it locally on his machine via a local “docker-compose up” command~~

4. ~~Decide in which GCP environment to deploy (CloudRun or GKE)~~ The application has been deployed on GKE

5. ~~Develop a CI/CD pipeline (TeamCity or Jenkins) to automatically deploy the code on the target platform~~ Jenkins was used for CICD