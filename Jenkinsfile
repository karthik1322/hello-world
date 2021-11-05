pipeline{
    agent any
    stages{
        stage("check out scm"){
            steps{
                
                checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[credentialsId: 'karthik1322', url: 'https://github.com/karthik1322/hello-world.git']]])
                            }

  
      }
      stage("sonarscanner"){
          steps{
              withSonarQubeEnv(credentialsId: 'sonaruser')
          }

       
      }
    }
}