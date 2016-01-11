#Na62-farm
This container recreate the environment of the na62-farm experiment.
I used the ubunutu 15.10 distribution.
##Get Docker

	sudo apt-get -y install docker.io

Use docker without sudo:

    sudo groupadd docker
    sudo gpasswd -a <your username> docker
    sudo service docker restart

Restart the system if needed.

##Build the Environment
Download the container image from this repository

	git clone https://github.com/MBoretto/Docks

move to the na62 dir and build the container with:
	
	./install

This command will create the *root/workspace/* directory and clone inside all the na62 repositories.
Please notice that this directory is shared with the container */root/* home directory. 
So every change you do on the code inside the container will be visible outside the container.
All the environment will be installed according to the *Dockerfile*.

###Dns troubleshooting   
If you are behind a dns server Docker will probably fail the the step above.
Follow this recipe to configure your dns.  

Identify your DNS using the following commad:

	nmcli -t -f IP4.DNS device show <your device name>

Edit */etc/default/docker*, uncomment the line:  

    DOCKER_OPTS="--dns <your_dns_server_1> --dns <your_dns_server_2>"

and add the dns previously found.

    sudo service docker restart

##Start the container
If the container has been build correctly start it with:

	./run

##Start eclipse for the first time

	eclipse &

set the environment to */root/workspace*

Open the widonw: Help->Install New Software  
Check avaible software, and install:

- C/C++ Development Tools SDK
- Git extension

All the eclipse extension will be stored in the home directory */root/* this directory is shared with the filesystem so you don't need to reinstall extension every time.

###X11 troubleshooting   
If x11 is not setted properly GUI program (Eclipse) lauched inside the container will fail.
Here's how to fix it:
Add a user to the list of authorised access to the X server.

	xhost si:localuser:root

This operation should be done each time you restart your computer, it's a good idea add this command in the *.bashrc* file.

### Tips for develop
If you need an additional terminals to work with the farm container type:

	docker exec -it <container-id press tab to autocomplete> bash

##Import the Projects
Start Eclipse and press: 
```
File->Import
	General->existing Project into workspace
```

Set */root/workspace* and select those projects:
- na62-farm
- na62-lib
- na62-lib-networking

Then press Finish.

## Compile the Projects
To compile the farm projects you should upate the build options according to the container environment.
Section below will show you how to change this options properly. 
Plese notice that the local farm will work on the socket packets handler and not on the PFring one.

Projects properties are accessible with: 

	right click on the project -> Properties

##Remove PFring dependencies
Consider the following projects:

- na62-farm   
- na62-farm-lib-networking


For each one open project properties dialog then: 

	C/C++ Build-> settings 
		GCC C++ compiler -> Preprocessor

set USE_PFRING to NUSE_PFRING


In na62-farm-lib-networking exclude from build the *PFring.cpp*: 
Right click on the file -> Resources configuration -> Exclude from Build

##Setting libs
Open the project Properties dialog then: 

	C/C++ Build-> settings

###Na62Farm
This configuration 
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
"${workspace_loc:/na62-farm-lib}"  
"${workspace_loc:/na62-farm-lib-networking}"  
"${workspace_loc:/na62-trigger-algorithms}"  
/usr/lib64  

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

"${workspace_loc:/na62-farm-lib-networking/Debug}"  
"${workspace_loc:/na62-trigger-algorithms/Debug_GLOG}"  
"${workspace_loc:/na62-farm-lib/GLOG_DEBUG}"  
/usr/lib64  

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
,0x48:1,0x4c:1 --CREAMCrates=1:3-10,1:13-20,2:3-10,2:13-20,4:3-4,4:9-10,4:13-20,5:3-10,5:13-20,6:3-10,6:13-20,7:3-10,7:15-18,8:3-10,8:13-20,9:3-10,9:13-20,10:3-10,10:13-20,11:3-10,11:13-20,12:3-10,12:13-20,13:3-10,13:13-20,14:3-10,14:13-20,15:3-10,15:13-20,16:3-10,16:13-20,17:3-10,17:13-20,18:3-10,18:13-20,19:3-10,19:13-20,20:3-10,20:13-20,21:3-10,21:13-20,22:3-10,22:13-20,23:3-10,23:13-20,24:5-8,24:13-20,25:3-10,25:13-20,26:3-10,26:13-20,27:3-10,27:13-14,27:19-20,29:3-10,29:13-20,30:3-10,30:13-20,31:3-8,31:13-16 --creamMulticastPort=58914 --CREAMPort=58915 --sendMRPsWithZSuppressionFlag=1 --minUsecsBetweenL1Requests=500 --maxTriggerPerL1MRP=100 --L2ReductionFactor=1 --L1FlagMode=255 --L1ReductionFactor=1 --L1DownscaleFactor=1 --L2DownscaleFactor=1 --L1AutoFlagFactor=10 --muvCreamCrateID=31 --ethDeviceName=eth0 --logtostderr=0 --maxNumberOfEventsPerBurst=20000
```

```
/root/workspace/na62-farm/Debug/na62-farm --L0DataSourceIDs=0x4:6,0xc:2,0x18:1,0x8:3,0x20:1,0x40:1,0x10:12,0x24:442,0x30:1,0x1c:4,0x14:32,0x44:1 --ethDeviceName=eth0 --verbosity=3 --maxNumberOfEventsPerBurst=20000 &

```

#Adding jumbo frame suppor inside the virtual docker0 bridge
MTU (maximum transmission unit) is the maximum packets dimension (in byte) allowed by the network interface.
Packets payload in every-day-life hardware is limited to 1500 byte.
NA62 exploits jumbo packets to transmits data to the farm. 
The following recipe will show you how to to changhe mtu for the docker bridge.

	sudo vim /lib/systemd/system/docker.service

Replace the line:

	ExecStart=/usr/bin/docker daemon -H fd://

with:

	ExecStart=/usr/bin/docker daemon -H fd:// --mtu=9000 

then:

    systemctl daemon-reload
    sudo service docker restart
    sudo systemctl status docker

you can check updated MTU with

	ifconfig

## Replay the traffic with tcpreplay
http://xmodulo.com/how-to-capture-and-replay-network-traffic-on-linux.html
tcpreplay --intf1=lo final.pcap
