sudo yum install -y epel-release
sudo yum install -y ansible


# Create and copy .repo file to host if in offline environment. eg.
#cp /vagrant/repos/epel.repo /etc/yum.repos.d/
#sudo yum clean all

sudo yum install -y ansible
sudo yum install -y sshpass


# Run ansible without --ask-pass
#ssh-keygen -f /root/.ssh/id_rsa -t rsa -N ''
#ssh-keyscan <client_ip_1> >> /root/.ssh/known_hosts
#ssh-keyscan <client_ip_2> >> /root/.ssh/known_hosts
#sshpass -p 'vagrant' ssh-copy-id <client_ip_1>
#sshpass -p 'vagrant' ssh-copy-id <client_ip_1>