pipeline {
    agent any
    stages {
        
        
        
        stage('sonarqube') {
            agent {
                docker { image 'busybox' }
            }
            steps {
                sh 'echo sonarqube'
            }
        }
        stage('docker build') {
            agent {
                docker { image 'busybox' }
            }
            steps {
                sh 'echo docker build'
            }
        }
        stage('docker push') {
            agent {
                docker { image 'busybox' }
            }
            steps {
                sh 'echo docker push'
            }
        }
        stage('app deploy') {
            agent {
                docker { image 'busybox' }
            }
            steps {
                sh 'echo kube deploy'
            }
        }
    }
}
