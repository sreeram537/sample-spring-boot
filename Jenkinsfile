pipeline {
    agent any
    stages {
        
        stage ('Test and Build') {
            agent {
                docker {
                    image 'gradle' 
                    args '--network=host'
                    reuseNode true
                }
            }
            steps {
                sh './gradlew clean build'
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
               dockerfile true
            }
            steps {
                sh 'echo docker build'
                sh 'pwd'
                sh 'ls -a'
            }
        }
        stage('docker push') {
            agent {
                docker { image 'busybox' }
            }
            steps {
                sh 'echo docker push'
                withDockerRegistry(credentialsId: 'dockerhub', url: 'https://index.docker.io/v1/') {
        sh 'docker push arigelasreeram/samplerepo'
    }
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
