pipeline {
    agent any
    stages {
        
        stage('build') {
            agent {
                docker { 
                    image 'gradle'
                }
                
            }
            steps {
                sh 'gradle -version'
                sh 'apt-get update'
                sh 'apt-get install iputils-ping'
                sh 'ping -c 4 google.com'
            }
        }
        
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
