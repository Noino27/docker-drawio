pipeline {
    agent {
        label "docker"
    }
    stages {
        def remote = [:]
        remote.name = '8.213.31.30'
        remote.host = '8.213.31.30'
        remote.user = 'root'
        remote.password = 'Admin123#'
        remote.allowAnyHosts = true
        stage('build') {
            steps {   
                sshPut remote: remote, from: 'run.sh', into: '.'
                sshCommand remote: remote, command: "run.sh"
            }
        }
    }
}
