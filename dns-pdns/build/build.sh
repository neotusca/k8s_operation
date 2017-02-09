yum install -y wget tar epel-release sshpass libcap-devel 

curl -o /etc/yum.repos.d/powerdns-rec-40.repo https://repo.powerdns.com/repo-files/centos-rec-40.repo 

yum update
yum install pdns-recursor -y
yum clean all


sed -i 's/--daemon/--daemon --config-dir=\/etc\/powerdns/'   /etc/init.d/pdns-recursor 
