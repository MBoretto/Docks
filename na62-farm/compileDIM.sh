#!/usr/bin/bash
#Source: https://dim.web.cern.ch/dim/dim_unix.html
#Dim needs libmotif-dev installed: sudo apt-get install libmotif-dev
#dnf install motif-devel

command -v curl >/dev/null 2>&1 || { echo >&2 "I require curl but it's not installed.  Aborting."; exit 1; }
command -v unzip >/dev/null 2>&1 || { echo >&2 "I require unzip but it's not installed.  Aborting."; exit 1; }
command -v gcc >/dev/null 2>&1 || { echo >&2 "I require gcc but it's not installed.  Aborting."; exit 1; }
export BASENAME=dim_v20r15

echo "-> Installing DIM ${BASENAME} ..."
curl https://dim.web.cern.ch/dim/${BASENAME}.zip -o ${BASENAME}.zip && \
unzip ${BASENAME}.zip && \
chmod 755 dim_v20r15 -R && \
cd ${BASENAME}/

export OS=Linux
export CC=g++
#building path is created as DIMDIR/ODIR
export DIMDIR=`pwd`
export ODIR=obj
mkdir ${ODIR}
make

#Custom make install 
echo "-> Coping includes in the system.."
cp -R dim/ /usr/local/include/
echo "-> Coping lib in the system.."
cp ${ODIR}/libdim.* /usr/local/lib64/
echo "-> Updating shared libraries.."
echo '/usr/local/lib64' > /etc/ld.so.conf.d/dim.conf
ldconfig
echo "-> Done!"
