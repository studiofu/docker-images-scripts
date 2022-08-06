### notes

execute script through the shell section

create docker compose - refer to the docker-compose.yaml

install ssh plugin and then add ssh remote and add the credentials which included the username and the private key to remote access

execute the script in remote host

create s3 bucketcreate 

aws s3 script to push the mysql dump database to s3 buckect, please refer to the sample aws-s3.sh

create the aws job and then execute the script

create ansible inventory, refer to the hosts file which is used by the ansible

create the ansible playbook , please refer to the play.yml


copy the ansible file, hosts, and playbook to jenkins docker or put them in to the data file

we can check the ansible host is correct or not by

```
ansible -i hosts -m ping test1 ( where hosts is the host file and the test1 is the host defined in the host file)
```

for example, 

```
hosts:

[all:vars]

ansible_connection = ssh

[test]
test1 ansible_host=remote_host ansible_user=remote_user ansible_private_key_file=/var/jenkins_home/ansible/remote-key
web1 ansible_host=web ansible_user=remote_user ansible_private_key_file=/var/jenkins_home/ansible/remote-key


play.yaml:

- hosts: test1
  tasks:
    - debug:
        msg: "=>>>>{{MSG}}"
    - shell: echo Hello World from jenkins> /tmp/ansible-file
```

ansible-playbook -i hosts play.yml --extra-vars "MSG=yes"

or defined the varaible in hosts => MSG="default"

or defined in the yaml playbook, such as vars: MSG=overrided



