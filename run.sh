"ssh -i /var/lib/jenkins/id_rsa root@10.0.2.104 \
&& ifconfig \
# Add Docker's official GPG key:
&& sudo apt-get update \
&& apt-get install ca-certificates curl \
&& install -m 0755 -d /etc/apt/keyrings \
&& curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc \
&& chmod a+r /etc/apt/keyrings/docker.asc \

# Add the repository to Apt sources:
&& apt-get update \
&& apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin \
&& docker run -i --rm --name="draw" -p 8443:8443 jgraph/drawio"
