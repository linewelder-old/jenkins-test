pipeline {
    agent any

    tools {
        dotnetsdk '.NET 7.0'
    }

    environment {
        DOTNET_SYSTEM_GLOBALIZATION_INVARIANT = 1
    }

    stages {
        stage("build") {
            steps {
                echo 'Building the app.'
                sh 'dotnet build'
            }
        }

        stage("run") {
            steps {
                echo 'Running the app.'
                sh 'dotnet run'
            }
        }
    }
}
