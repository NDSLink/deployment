printf -v date '%(%Y-%m-%d)T\n' -1
cp pgl-dns.service /etc/systemd/system/pgl-dns.service
git clone https://github.com/NDSLink/dream-server
git clone https://github.com/NDSLink/DNS-Server
cd dream-server
docker build -t dream-server:$date -t dream-server:latest .
docker run docker run -d -p 80:80 --name dream-server dream-server:latest
