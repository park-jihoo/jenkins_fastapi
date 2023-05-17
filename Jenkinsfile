pipeline {
    agent any
    stages {
        stage('Clone') {
            steps {
                git 'https://github.com/park-jihoo/jenkins_fastapi.git'
            }
        }
        stage('Build') {
            steps {
                sh 'pip3 install -r requirements.txt'
            }
        }
        stage('Deploy') {
            steps {
                sh 'sudo cp -r /var/lib/jenkins/workspace/Jenkins_pipeline /home/ec2-user'
                sh 'sudo cp /home/ec2-user/Jenkins_pipeline/fastapi.service /etc/systemd/system/'
                sh 'sudo systemctl daemon-reload'
                sh 'sudo systemctl restart fastapi'
            }
        }
    }
}
