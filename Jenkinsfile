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
                sh 'gradle wrapper --gradle-version 6.8.3 --distribution-type all'
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
