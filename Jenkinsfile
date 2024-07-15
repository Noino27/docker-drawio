pipeline {
    agent {
        label "docker"
    }
    stages {
        stage('build') {
            steps {   
            sh 'chmod 755 run.sh'    
            sh './run.sh'
            }
        }
    }
}
