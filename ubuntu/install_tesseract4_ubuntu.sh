apt-get update
apt-get upgrade -y
apt-get install git
apt-get install build-essential -y
apt-get install g++ -y # or clang++ (presumably)
apt-get install autoconf automake libtool -y
apt-get install autoconf-archive -y
apt-get install pkg-config -y
apt-get install libpng12-dev -y
apt-get install libjpeg8-dev -y
apt-get install libtiff5-dev -y
apt-get install zlib1g-dev -y

apt-get install libleptonica-dev -y

git clone --depth 1  https://github.com/tesseract-ocr/tesseract.git tesseract
cd tesseract
./autogen.sh
./configure 
LDFLAGS="-L/usr/local/lib" CFLAGS="-I/usr/local/include" make
make install
ldconfig 
tesseract --version