# Basic Elastic Stack Environment for Development

- All program run in a single node
- Needed to be use in an offline environment

## Tech
- Elastic Stack (ElasticSearch, Logstash, Filebeats)
- Vagrant 
- CentOS 7.2
- Ansible

## Usage
```
vagrant up
vagrant ssh
bash> cd /vagrant/install/
bash> ansible-playbook -i hosts es.yml --ask-pass  # password is vagrant
```
### Run logstash and filebeat for dev
```
sudo -u logstash bin/logstash -f /etc/logstash/conf.d/pipeline.conf --
sudo ./filebeat -e -c /etc/filebeat/filebeat.yml -d "publish"
```
### Generate some log to view from kibana
```
bash> python example_logger.py
```

## Download the following and place in `install\roles\es\files` directory

- elasticsearch-6.1.1.rpm
- filebeat-6.1.1-x86_64.rpm
- kibana-6.1.1-x86_64.rpm
- logstash-6.1.1.rpm.rpm
- jdk-8u144-linux-x64.rpm

## Work In Progress
- point yum repo to offline environment
- make common configuration in ansible vars