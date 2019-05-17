node {
       
        git url: "https://github.com/PranjaliKharwade/WorkoutServer", credentialsId: 'Github'
    
        sh "git rev-parse HEAD > .git/commit-id"
        def commit_id = readFile('.git/commit-id').trim()
        println commit_id
		withMaven(
        // Maven installation declared in the Jenkins "Global Tool Configuration"
        maven: 'M3',
        // Maven settings.xml file defined with the Jenkins Config File Provider Plugin
        // Maven settings and global settings can also be defined in Jenkins Global Tools Configuration
        mavenSettingsConfig: 'my-maven-settings',
        mavenLocalRepo: '.repository') {
 
      // Run the maven build
      sh "mvn package"
        stage "build"
        def app = docker.build "aarshad88/workoutapp:0.1.1-SNAPSHOT"
    
        stage "publish"
        app.push 'master'
        app.push "${commit_id}"
    }
}
}
