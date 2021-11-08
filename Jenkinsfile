pipeline{
    environment { 

        registry = "saikrthk17/fresh" 
        registryCredential = 'dockerhub_id' 
        dockerImage = '' 
    }

    agent any
        stages{
        stage("check out scm"){
            steps{
                
                checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[credentialsId: 'karthik1322', url: 'https://github.com/karthik1322/hello-world.git']]])
                            }
        }
        stage ('Build') {
            steps {

               withMaven(jdk: 'JAVA_HOME', maven: 'MAVEN') {
                   sh "mvn clean install package"
                    }
            }
        }
            stage ('Build docker image') {
            steps {
              
                script { 

                    dockerImage = docker.build registry + ":$BUILD_NUMBER" 
                }
                    }
            }
      }
      
    }
