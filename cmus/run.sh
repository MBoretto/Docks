#!/bin/bash
docker rm cmus
docker run \
    -v /media/marco/4d107271-a524-4e13-90b3-b18b7add9237/daily.0/localhost/media/DatiCucina/Musica/:/root/Music \
    -it --name cmus \
    c_cmus
