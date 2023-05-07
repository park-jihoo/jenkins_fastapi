pipeline{
    agent any
    stages {
        stage('Git Checkout'){
            sh 'git pull'
        }
        stage('Clean'){
            sh 'rm -rf __pycache__'
        }
        stage('Install Python'){
            sh 'apt-get update'
            sh 'apt-get install python3'
            sh 'apt-get install python3-pip'
        }
        stage('Install Requirements'){
            sh 'pip3 install -r requirements.txt'
        }
        stage('Run Tests'){
            sh 'python3 -m pytest'
        }
        stage('Build'){
            sh 'python3 app.py'
        }
    }
}