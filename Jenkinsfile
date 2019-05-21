node {
    
    
        git url: "https://github.com/PranjaliKharwade/workoutserver", credentialsId: 'pranjalikharwade10@gmail.com'
    
        sh "git rev-parse HEAD > .git/commit-id"
        def commit_id = readFile('.git/commit-id').trim()
        println commit_id
    
        stage "build"
    def app = docker.build -t image1.
    
        stage "publish"
        app.push 'master'
        app.push "${commit_id}"
    
  }
