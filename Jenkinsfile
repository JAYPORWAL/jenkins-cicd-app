pipeline {
    agent any

    stages {
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t jenkins-cicd-app .'
            }
        }

        stage('Run Docker Container') {
            steps {
                sh 'docker stop jenkins-cicd || true && docker rm jenkins-cicd || true'
                sh 'docker run -d --name jenkins-cicd -p 5000:5000 jenkins-cicd-app'
            }
        }
    }
}
