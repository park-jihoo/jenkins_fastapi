pipeline{
    agent {
        docker {
            image 'continuumio/miniconda3:latest'
            args '-v /var/run/docker.sock:/var/run/docker.sock'
        }
    }
    stages {
        stage('Build') {
            steps {
                sh 'python --version'
            }
        }
        stage('Docker Clean') {
            steps {
                sh 'docker container stop $(docker container ls -aq)'
            }
        }
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t myimage .'
            }
        }
        stage('Run Docker Image') {
            steps {
                sh 'docker run -d -p 3000:3000 myimage'
            }
        }
        stage('Hello World!'){
            steps {
                echo 'Hello World!'
            }
        }
    }
}