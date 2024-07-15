pipeline {
    agent {
        label "docker"
    }

    stages {
        stage('build') {
            steps {
                sh 'run.sh'
            }
        }
    }
}
