#!/usr/bin/tcsh
#Source: https://dim.web.cern.ch/dim/dim_unix.html
#Dim needs libmotif-dev installed: sudo apt-get install libmotif-dev
#dnf install motif-devel
setenv BASENAME dim_v20r15

echo Installing DIM ${BASENAME} ...
curl https://dim.web.cern.ch/dim/${BASENAME}.zip -o ${BASENAME}.zip && \
unzip ${BASENAME}.zip && \
chmod 755 dim_v20r15 -R && \
cd ${BASENAME}/

setenv OS Linux
setenv CC g++
#building path is created as DIMDIR/ODIR
setenv ODIR obj
setenv DIMDIR .

mkdir ${ODIR}
make

#Custom make install 
#cp -R dim/ /usr/local/include/
#cp ${ODIR}/libdim.a ${ODIR}/libdim.so /usr/local/lib64/
