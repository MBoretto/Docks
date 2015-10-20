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

##Start the farm locally
```
/root/workspace/na62-farm/Debug/na62-farm --firstBurstID=2 --mergerHostNames=10.194.20.114,10.194.20.115,10.194.20.116 --incrementBurstAtEOB=0 --L0DataSourceIDs=0x4:6,0xc:2,0x18:1,0x8:3,0x20:1,0x40:1,0x10:12,0x24:442,0x30:1,0x1c:4,0x14:32,0x44:1
,0x48:1,0x4c:1 --CREAMCrates=1:3-10,1:13-20,2:3-10,2:13-20,4:3-4,4:9-10,4:13-20,5:3-10,5:13-20,6:3-10,6:13-20,7:3-10,7:15-18,8:3-10,8:13-20,9:3-10,9:13-20,10:3-10,10:13-20,11:3-10,11:13-20,12:3-10,12:13-20,13:3-10,13:13-20,14:3-10,14:13-20,15:3-10,15:13-20,16:3-10,16:13-20,17:3-10,17:13-20,18:3-10,18:13-20,19:3-10,19:13-20,20:3-10,20:13-20,21:3-10,21:13-20,22:3-10,22:13-20,23:3-10,23:13-20,24:5-8,24:13-20,25:3-10,25:13-20,26:3-10,26:13-20,27:3-10,27:13-14,27:19-20,29:3-10,29:13-20,30:3-10,30:13-20,31:3-8,31:13-16 --creamMulticastPort=58914 --CREAMPort=58915 --sendMRPsWithZSuppressionFlag=1 --minUsecsBetweenL1Requests=500 --maxTriggerPerL1MRP=100 --L2ReductionFactor=1 --L1FlagMode=255 --L1ReductionFactor=1 --L1DownscaleFactor=1 --L2DownscaleFactor=1 --L1AutoFlagFactor=10 --muvCreamCrateID=31
```

```
/root/workspace/na62-farm/Debug/na62-farm --L0DataSourceIDs=0x4:6,0xc:2,0x18:1,0x8:3,0x20:1,0x40:1,0x10:12,0x24:442,0x30:1,0x1c:4,0x14:32,0x44:1 --ethDeviceName=eth0 --verbosity=3 --maxNumberOfEventsPerBurst=20000 &

```
## Replay the traffic with tcpreplay
http://xmodulo.com/how-to-capture-and-replay-network-traffic-on-linux.html
tcpreplay --intf1=lo final.pcap
