#Na62-farm

##Before start
Set properly the dns if any as described in the main README
Add a user to the list of f authorised access to the X server.

##Install the na62-farm repos
Download the sofware farm and build the container:
	
	./install

then start the container with 

	./run

##Start eclipse for the first time

	eclipse &

set the environment to */root/workspace*

Open the widow: Help->Install New Software  
Check avaible software, and install:

- C/C++ Development Tools SDK

##Import Project
File->Import
	General->existing Project into workspace

Set /root/workspace
Select the projects
farm
lib
lib-networking
then click Finish

###Remove from workspace
PFring.cpp
PFring.h 

##Remove PFring dependencies
right click on the project -> Properties
	C/C++ Build-> settings 
		GCC C++ compiler -> Preprocessor
set USE_PFRING to NUSE_PFRING

o na62-farm
t/workspace/na62-farm-lib-networking/LKr' 
- na62-farm-lib-networking
##Setting libs
right click on the projecti ->Properties
	C/C++ Build-> settings

###Na62Farm
####GCC C++ Compiler -> Includes
- Include paths (-l)
"${workspace_loc:/na62-farm-lib-networking}"  
"${workspace_loc:/na62-trigger-algorithms}"  
"${workspace_loc:/na62-farm-lib}"  
/afs/cern.ch/sw/IntelSoftware/linux/x86_64/xe2013/composer_xe_2013_sp1.2.144/ipp/include  
/afs/cern.ch/sw/IntelSoftware/linux/x86_64/xe2013/composer_xe_2013_sp1.2.144/mkl/include  
/afs/cern.ch/sw/IntelSoftware/linux/x86_64/xe2013/composer_xe_2013_sp1.2.144/tbb/include  
----

"${workspace_loc:/${ProjName}}"
/usr/lib64
"${workspace_loc:/na62-farm-lib}"
"${workspace_loc:/na62-farm-lib-networking}"
"${workspace_loc:/na62-trigger-algorithms}"

####GCC C compiler -> Includes
- Include Path (-l)  
"${workspace_loc:/na62-farm-lib-networking}"  
"${workspace_loc:/na62-trigger-algorithms}"  
/afs/cern.ch/sw/IntelSoftware/linux/x86_64/xe2013/composer_xe_2013_sp1.2.144/ipp/include  
/afs/cern.ch/sw/IntelSoftware/linux/x86_64/xe2013/composer_xe_2013_sp1.2.144/mkl/include  
/afs/cern.ch/sw/IntelSoftware/linux/x86_64/xe2013/composer_xe_2013_sp1.2.144/tbb/include  
-----------------------
/usr/lib64  
"${workspace_loc:/na62-farm-lib-networking}"  
"${workspace_loc:/na62-trigger-algorithms}"  

####GCC C++ Linker -> Libraries
- Libraries (-l)
na62-farm-lib-networking  
na62-trigger-algorithms  
na62-farm-lib  
boost_filesystem  
boost_thread  
boost_timer  
glog  
pcap  
tcmalloc  
pthread  
zmq  
boost_program_options  
boost_system  
tbb  
pfring  
-------------------
na62-farm-lib-networking  
na62-trigger-algorithms  
na62-farm-lib  
boost_filesystem  
boost_thread  
boost_timer  
glog  
pcap  
tcmalloc  
pthread  
zmq  
boost_program_options  
boost_system  
tbb  

- Library search path (-L)
"${workspace_loc:/na62-farm-lib-networking/Debug}"  
"${workspace_loc:/na62-trigger-algorithms/Debug_GLOG}"  
"${workspace_loc:/na62-farm-lib/GLOG_DEBUG}"  
/afs/cern.ch/sw/IntelSoftware/linux/x86_64/xe2013/composer_xe_2013_sp1.2.144/compiler/lib/intel64  
/afs/cern.ch/sw/IntelSoftware/linux/x86_64/xe2013/composer_xe_2013_sp1.2.144/ipp/../compiler/lib/intel64  
/afs/cern.ch/sw/IntelSoftware/linux/x86_64/xe2013/composer_xe_2013_sp1.2.144/ipp/lib/intel64  
/afs/cern.ch/sw/IntelSoftware/linux/x86_64/xe2013/composer_xe_2013_sp1.2.144/mkl/lib/intel64  
/afs/cern.ch/sw/IntelSoftware/linux/x86_64/xe2013/composer_xe_2013_sp1.2.144/tbb/lib/intel64/gcc4.4  
/afs/cern.ch/sw/lcg/contrib/gcc/4.8/x86_64-slc6-gcc48-opt/lib64/  
--------
/usr/lib64
"${workspace_loc:/na62-farm-lib-networking/Debug}"
"${workspace_loc:/na62-trigger-algorithms/Debug_GLOG}"
"${workspace_loc:/na62-farm-lib/GLOG_DEBUG}"

###Na62Farm-lib
####GCC C++ Compiler -> Includes
- Include paths (-l)
/afs/cern.ch/sw/IntelSoftware/linux/x86_64/xe2013/composer_xe_2013_sp1.2.144/ipp/include
------------
/usr/lib64

###Na62Farm-lib-networking
####GCC C++ Compiler -> Includes
- Include paths (-l)
"${workspace_loc:/na62-farm-lib}"
/afs/cern.ch/sw/IntelSoftware/linux/x86_64/xe2013/composer_xe_2013_sp1.2.144/ipp/include
/afs/cern.ch/sw/IntelSoftware/linux/x86_64/xe2013/composer_xe_2013_sp1.2.144/mkl/include
/afs/cern.ch/sw/IntelSoftware/linux/x86_64/xe2013/composer_xe_2013_sp1.2.144/tbb/include
---------------
"${workspace_loc:/na62-farm-lib}"
/usr/lib64

####GCC C compiler -> Includes
- Include Path (-l)  
"${workspace_loc:/na62-farm-lib}"
/afs/cern.ch/sw/IntelSoftware/linux/x86_64/xe2013/composer_xe_2013_sp1.2.144/ipp/include
/afs/cern.ch/sw/IntelSoftware/linux/x86_64/xe2013/composer_xe_2013_sp1.2.144/mkl/include
/afs/cern.ch/sw/IntelSoftware/linux/x86_64/xe2013/composer_xe_2013_sp1.2.144/tbb/include
------
/usr/lib64
"${workspace_loc:/na62-farm-lib}"


###Na62Farm-trigger-algorithms
rkspace_loc:/na62-farm-lib}"
/afs/cern.ch/sw/IntelSoftware/linux/x86_64/xe2013/composer_xe_2013_sp1.2.144/ipp/include
/afs/cern.ch/sw/IntelSoftware/linux/x86_64/xe2013/composer_xe_2013_sp1.2.144/mkl/include
/afs/cern.ch/sw/IntelSoftware/linux/x86_64/xe2013/composer_xe_2013_sp1.2.144/tbb/include
/afs/cern.ch/sw/lcg/external/Boost/1.55.0_python2.7/x86_64-slc6-gcc47-opt/include/boost-1_55/
/sw/opt/boost-1_55/include
----

####GCC C++ Compiler -> Includes
- Include paths (-l)


####GCC C compiler -> Includes
- Include Path (-l)  
"${workspace_loc:/na62-farm-lib}"


