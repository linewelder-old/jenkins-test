pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh "docker build -t my-first-image ."
            }
        }

        stage('Deploy') {
            steps {
                sh "docker stop my-first-app || true"
                sh "docker rm my-first-app || true"
                sh '''docker run \\
    	            --name my-first-app \\
                    --detach \\
                    --publish 80:80 \\
                    my-first-image'''
            }
        }
    }
}
