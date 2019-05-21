pipeline { 
    agent any  
    stages { 
        stage('test') { 
            steps { 
                sh 'mvn test'
               echo 'This is Test1.' 
            }
                    }
         stage('Build') { 
            steps { 
                sh 'mvn package'
               echo 'This is to build code.'
                stage "Run"
        docker.build aarshad88 + ":$BUILD_NUMBER"
    
        stage "publish"
        app.push 'master'
        app.push "${commit_id}"
                
            }
        }
    }
}
