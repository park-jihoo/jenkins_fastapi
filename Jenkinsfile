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
                sh 'sudo cp -r /var/lib/jenkins/workspace/Jenkins_pipeline /home/ubuntu'
                sh 'sudo systemctl daemon-reload'
                sh 'sudo systemctl start fastapi'
                sh 'sudo systemctl enable fastapi'
            }
        }
    }
}