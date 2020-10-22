pipeline {
    agent none
    stages {
        stage('build') {
            agent {
                docker { image 'gradle' }
            }
            steps {
                sh 'chmod +x gradlew && ./gradlew build'
            }
        }
        stage('sonarqube') {
            //agent {}
            steps {
                sh 'echo sonarqube'
            }
        }
        stage('docker build') {
            //agent {}
            steps {
                sh 'echo docker build'
            }
        }
        stage('docker push') {
            //agent {}
            steps {
                sh 'docker push'
            }
        }
        stage('app deploy') {
            //agent {}
            steps {
                sh 'kube deploy'
            }
        }
    }
}