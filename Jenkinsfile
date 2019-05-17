node {
    docker.withRegistry('https://hub.docker.com/r/aarshad88/workoutapp', 'aarshad88') {
    
        git url: "https://github.com/PranjaliKharwade/WorkoutServer", credentialsId: 'pranjalikharwade10@gmail.com'
    
        sh "git rev-parse HEAD > .git/commit-id"
        def commit_id = readFile('.git/commit-id').trim()
        println commit_id
    
        stage "build"
        def app = docker.build "aarshad88/workoutapp:0.1.1-SNAPSHOT"
    
        stage "publish"
        app.push 'master'
        app.push "${commit_id}"
    }
}
