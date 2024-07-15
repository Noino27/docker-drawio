pipeline {
    agent {
        label "docker"
    }
    stages {
        stage('build') {
            steps {   
            sh 'chmod 755 /workspace/test/run.sh'    
            sh './workspace/test/run.sh'
            }
        }
    }
}
