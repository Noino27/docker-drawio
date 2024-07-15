pipeline {
    agent "docker"

    stages {
        stage('build') {
            steps {
                sh 'docker run -i --rm --name="draw" -p 8443:8443 jgraph/drawio'
            }
        }
    }
}
