## Ansible adhoc commands
ref: https://docs.ansible.com/ansible/latest/user_guide/intro_adhoc.html

Hosts config: /etc/ansible/hosts
```
myserver1

[web]
webserver1
webserver2
```

```
ansible all -a ls
ansible web -a ls
ansible all -b -K -a "sudo yum install python-pip"
ansible all -m copy -a "src=~/mylocalfolder/somefile.txt dest=/tmp/somefile.txt"
```
To use custom hosts file:
```
ansible all -m "javac -version" -i mycustomhosts.txt
``` 
