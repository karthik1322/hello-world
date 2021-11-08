pipeline{
    agent any
    tools { 
        maven 'Maven 3.8.3' 
        jdk 'jdk8' 
    }
    stages{
        stage("check out scm"){
            steps{
                
                checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[credentialsId: 'karthik1322', url: 'https://github.com/karthik1322/hello-world.git']]])
                            }

        stage ('Build') {
            steps {
                sh 'mvn clean install package' 
            }
      }
      
    }
}