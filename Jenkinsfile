pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                sh 'conda env create -f environment.yml'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
                sh 'conda run -n myenv python -m unittest discover -s'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
                sh 'docker build -t myimage:latest .'
                sh 'docker run -d -p 5000:5000 myimage:latest'

            }
        }
    }
}