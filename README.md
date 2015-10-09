#Docks
Collection of useful container: 

- GuiGeneric/: Fedora:22 environment for GUI application
- na62-farm/: Fedora:22 environment to develop na62 farm software with Eclipse

#Genereric instruction
Edit the Dockerfile, fill properly your uid and gid. You can fetch it with:

	id your_user_name

Build container:

	docker build -t container_name .

Run container:

```
docker run -ti --rm -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix container_name
```

##Dns troubleshooting   
Identify DNS using the following commad:

    nm-tool | grep DNS

Edit */etc/default/docker*, uncomment the line:  

    DOCKER_OPTS="--dns <your_dns_server_1> --dns <your_dns_server_2>"

and add the dns previously found.

    sudo service docker restart
###X11 troubleshooting

	xhost +x
Add a user to the list of f authorised access to the X server.

	xhost si:localuser:root

###Thanks to 
Mconcas for [inspiration](https://github.com/mconcas/docks)
