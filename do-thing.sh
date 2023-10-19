# install docker and git
sudo yum install docker
sudo yum install docker-compose-plugin
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
echo Activate with docker compose up


