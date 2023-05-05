pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                echo 'Checking out code..'
                checkout scm
            }
        }
        stage('Docker Build') {
            steps {
                echo 'Building Docker Image..'
                sh 'docker build -t flask-app:latest .'
            }
        }
        stage('Docker Run') {
            steps {
                echo 'Running Docker Image..'
                sh 'docker run -d -p 3000:3000 flask-app'
            }
        }
    }
}