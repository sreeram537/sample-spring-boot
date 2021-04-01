pipeline {
    agent any
    stages {
        
        stage ('Test and Build') {

            steps {
                sh './gradlew clean build'
                
            }
        }
        
        stage('docker push') {

                 steps {
                        sh 'echo docker build'
                        sh 'sudo usermod -aG docker $(whoami)'
                        sh 'sudo service docker start'
                        sh 'docker build -t arigelasreeram/samplerepo .'
                        sh 'echo docker push'
                        withDockerRegistry(credentialsId: 'dockerhub', url: 'https://index.docker.io/v1/') 
                        {
                        sh 'docker push arigelasreeram/samplerepo'
                        }
                    }
        }
        
    }
}
