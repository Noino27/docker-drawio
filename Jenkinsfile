pipeline {
    agent {
        label "docker"
    }

    stages {
        stage('connect') {
            steps {
                sh 'ssh -i /var/lib/jenkins/id_rsa root@10.0.2.104'
                sh 'pwd'
            }
        }
        stage('build') {
            steps {   
                sh 'sleep 10'
                sh 'pwd'
                sh 'ifconfig'
                sh 'echo Admin123# | sudo -S apt-get update'
                sh 'sudo apt-get install ca-certificates curl'
                sh 'sudo install -m 0755 -d /etc/apt/keyrings'
                sh 'sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc'
                sh 'sudo chmod a+r /etc/apt/keyrings/docker.asc'
                sh 'sudo apt-get update'
                sh 'sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin'
                sh 'chmod 777 /var/run/docker.sock'
                sh 'docker run -i --rm --name="draw" -p 8443:8443 jgraph/drawio'
            }
        }
    }
}
