docker run -d --name myjenkins -p 8080:8080 -p 50000:50000 -v /dockvol/jenkins-home:/var/jenkins_home jenkins/jenkins:lts
