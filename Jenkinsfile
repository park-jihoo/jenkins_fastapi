pipeline {
    agent any
    stages {
        stage('Setup') {
            steps {
                echo 'Setting up..'
                sh 'python -m pip install --upgrade pip'
            }
        }
        stage('Build') {
            steps {
                echo 'Building..'
                sh 'pip install -r requirements.txt'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
                sh 'python -m unittest'
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