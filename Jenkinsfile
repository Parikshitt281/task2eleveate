pipeline {
    agent any

    stages {
        stage('Clone') {
            steps {
                git branch: 'main', url: 'https://github.com/Parikshitt281/task2eleveate.git'
            }
        }

        stage('Build & Install') {
            steps {
                sh 'sudo apt-get update'
                sh 'sudo apt-get install docker.io -y'
                sh 'sudo systemctl start docker'
                sh 'sudo systemctl enable docker'
                sh 'sudo docker build -t task2 .'
                sh 'sudo docker tag task2 parikshitt281/task2'
                sh 'sudo docker push parikshitt281/task2'
                sh 'sudo docker rm -f elevate || true'
                sh 'sudo docker run -d -P  --name elevate parikshitt281/task2'
            }
        }
    }
}

