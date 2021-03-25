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
                sh 'mvn -version'
                sh 'mvn -N io.takari:maven:wrapper -Dmaven=3.5.2'
                sh 'chmod +x mvnw && ./mvnw clean install'
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
