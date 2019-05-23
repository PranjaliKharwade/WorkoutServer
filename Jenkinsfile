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
                sh 'docker build -t "myimage1:myimage1" .'
                sh 'docker push aarshad88/workoutapp:0.1.1-SNAPSHOT'
                
            }
        }
    }
}
