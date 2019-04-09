apt update
apt upgrade
apt install git -y
apt install supervisor -y
apt install curl -y
apt install aptitude  -y
apt install sudo -y



#psql
wget -q https://www.postgresql.org/media/keys/ACCC4CF8.asc -O - | apt-key add -
echo "deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main" >> /etc/apt/sources.list.d/pgdg.list
apt update
aptitude -y install postgresql-11
aptitude -y install postgresql-server-dev-11

#python
apt install build-essential -y
apt install libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev libbz2-dev -y
apt install zlib1g zlib1g-dev -y
apt install libffi-dev -y

wget https://www.python.org/ftp/python/3.7.0/Python-3.7.0.tgz
tar -xzvf Python-3.7.0.tgz
cd Python-3.7.0
./configure --enable-optimizations
make || { echo 'make failed' ; exit 1; }
make install || { echo 'make install failed' ; exit 1; }
cd ..
rm -r Python-3.7.0
python3.7 --version
pip3.7 install --upgrade pip




#user setup psql
su - postgres
psql



sudo apt install git
sudo apt-get install chrome-gnome-shell
sudo apt install libgnome-keyring-common libgnome-keyring-dev
sudo 
 wget https://bootstrap.pypa.io/get-pip.py -O ./get-pip.py
 python3.6 ./get-pip.py
 python3.7 ./get-pip.py
sudo apt-get install npm
sudo apt-get install git

cd /tmp && wget -qO - https://github.com/nana-4/materia-theme/archive/master.tar.gz | tar xz
cd materia-theme-master
sudo ./install.sh
sudo add-apt-repository -u ppa:snwh/ppa
sudo apt-get install paper-icon-theme