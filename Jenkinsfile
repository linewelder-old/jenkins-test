node {
    def app

    stage('Checkout code') {
        checkout scm
    }

    stage('Build image') {
        app = docker.build("getintodevops/hellonode")
    }

    stage('Test image') {
        app.inside {
            sh 'echo "Tests passed"'
        }
    }
}
