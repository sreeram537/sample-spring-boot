pipeline {
    agent any
    stages {
        
        stage ('Test and Build') {
            agent {                
                docker.image('alpine').inside  {
                    sh 'echo "hello from inside a container!"'
                    reuseNode true
                }
            }
            steps {
                sh './gradlew clean build'
            }
        }
        
        stage('docker push') {

                 steps {
                        sh 'echo docker build'
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
