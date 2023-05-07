pipeline{
    agent any
    stages {
        stage('Hello'){
            steps{
                echo 'Hello World'
            }
        }
        stage('Git Checkout'){
            steps{
                sh 'git pull'
            }
        }
        stage('Clean'){
            steps{
                sh 'rm -rf .pytest_cache'
                sh 'rm -rf __pycache__'
            }
        }
        stage('Install Python'){
            steps{
                sh 'apt-get update'
                sh 'apt-get install python3'
                sh 'apt-get install python3-pip'
            }
        }
        stage('Install Requirements'){
            steps{
                sh 'pip3 install -r requirements.txt'
                sh 'pip3 install pytest'
            }
        }
        stage('Build'){
            steps{
                sh 'python3 app.py'
            }
        }
    }
}