pipeline {
    
    tools {maven 'mymaven'}
    
    agent any 
    
    stages {
        
        stage ('Clone Repo') {
            
            steps {
                git 'https://github.com/vjdgithub/DevOpsCodeDemo.git'
            }
            
        }
       
                stage ('Build the Code') {
            
            steps {
                sh 'mvn clean install package'
            }
            
        }
        
        stage ('Copy the War file from target directory to current diroctory') {
            
            steps {
                sh 'cp /var/lib/jenkins/workspace/CICDpipeline2/target/addressbook.war .'
            }
            
        }
        stage ('Build Image') {
            
            steps {
                sh 'docker build -t myappjenkins2:$BUILD_NUMBER .'
            }
            
        }
        stage ('Deploy the Image') {
            
            steps {
                sh 'docker run -d -P myappjenkins2:$BUILD_NUMBER'
                sh 'docker ps -a'
            }
            
        }
        
    }
}
