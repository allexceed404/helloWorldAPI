pipeline {
    agent any
    environment {
        PROJECT_ID = "cndaas-test-project-1"
        CLUSTER_NAME = "dev-priyanshuv"
        LOCATION = "us-central1-a"
        CREDENTIALS_ID = "kubernetes"
    }
    stages {
        stage("Build Docker Image") {
            steps {
                bat("docker build -t priyanshuv1238/hello-world:$env.BUILD_ID .")
            }
        }
        stage("Pushing Docker Image") {
            steps {
                withCredentials([string(credentialsId: 'dockerhub', variable: 'dockerhub')]) {
                    bat("docker login -u priyanshuv1238 -p $dockerhub")
                }
                bat("docker push priyanshuv1238/hello-world:$env.BUILD_ID")
            }
        }
        stage("Deploy to GKE") {
            steps {
                echo "Deploying the application..."
                echo "Deploying deployment.yaml"
                bat("powershell -Command \"(gc deployment.yaml) -replace 'tagversion', $env.BUILD_ID | Out-File -encoding ASCII deployment.yaml\"")
                step([$class: "KubernetesEngineBuilder",
                        projectId: env.PROJECT_ID,
                        clusterName: env.CLUSTER_NAME,
                        location: env.LOCATION,
                        manifestPattern: "deployment.yaml",
                        credentialsId: env.CREDENTIALS_ID,
                        verifyDeployments: true])
                echo "Deployment Finished"
            }
        }
    }
}