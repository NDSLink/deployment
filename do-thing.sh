# install docker and git
sudo yum install docker
sudo curl -L https://download.docker.com/linux/centos/7/x86_64/stable/Packages/docker-compose-plugin-2.6.0-3.el7.x86_64.rpm -o ./compose-plugin.rpm
sudo yum install ./compose-plugin.rpm -y
sudo yum install git
# set up docker
sudo systemctl start docker
sudo usermod -a -G docker $USER
# install the worst package manager known to man
sudo yum install npm
# set up sass and compile
sudo npm install -g node-sass
# clone dream & dns servers
git clone https://github.com/NDSLink/dream-server
git clone https://github.com/NDSLink/DNS-Server
node-sass dream-server/static/scss -o dream-server/static/css # compile scss
# open port 53
sudo iptables -I INPUT 1 -p tcp --dport 53 -j ACCEPT
sudo iptables -I INPUT 1 -p udp --dport 53 -j ACCEPT
echo Activate with docker compose up


