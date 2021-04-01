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
                    sh 'docker build -t arigelasreeram/samplerepo .'
                    sh 'echo docker push'
                    withDockerRegistry(credentialsId: 'dockerhub', url: 'https://index.docker.io/v1/') 
                        {
                        sh 'docker push arigelasreeram/samplerepo'
                        }     
                 }
        }

        stage('Deploy on test') {
         steps {
             sh 'curl -LO "https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl"'  
             sh 'chmod u+x ./kubectl'  
             sh 'pwd'
             sh './kubectl apply -f kubernetes.yml'
         }
      }
           
    }
}
