pipeline {
    agent any
    stages {
        stage('build') {
            agent {
                docker { 
                    image 'gradle' 
                   }
                docker build -t gradle --network=host
            }
            steps {
                sh 'gradle -version'
                sh 'chmod +x gradlew && ./gradlew clean build'
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
