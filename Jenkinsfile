pipeline {
    agent any
    stages {
        stage('Clone') {
            steps {
                git 'https://github.com/park-jihoo/jenkins_flask.git'
            }
        }
        stage('Build') {
            steps {
                sh 'pip3 install -r requirements.txt'
            }
        }
        stage('Deploy') {
            steps {
                sh 'nohup uvicorn main:app --host 0.0.0.0 --port 8000'
            }
        }
    }
}