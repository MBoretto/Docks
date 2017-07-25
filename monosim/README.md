# How to read a SIM card 
Card reader model ACR38U (Universita degli studi di Torino)

Attention the container run in --privileged mode!

	./build.sh
    ./run.sh
	rpm -i driver/pcsc-lite-acsccid-1.0.8-1.fc20.x86_64.rpm

Connect the reader


    pcscd -fd

Open onother terminal

	./exec.sh
	monosim 


Still I have to understand if everything work because I intalled the driver on the host or on the container..


## Useful link
https://forum.ubuntu-it.org/viewtopic.php?t=530279&p=4146645
https://ubuntuforums.org/showthread.php?t=1677372
https://forums.lime-technology.com/topic/47595-how-do-i-pass-through-a-usb-device-to-a-docker-container/
https://stackoverflow.com/questions/24225647/docker-any-way-to-give-access-to-host-usb-or-serial-device
