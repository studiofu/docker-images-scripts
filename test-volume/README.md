
#share the volume
docker run -it -v /share --name dbdata ubuntu

# use the volume from dbdata, i.e. the /share
docker run -it --volumes-from dbdata --name db1 ubuntu


docker exec -it dbdata bash

