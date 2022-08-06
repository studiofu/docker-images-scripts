
to build the docker image

docker build -t test/gcc .

to run the image => docker run test/gcc => docker will run the "CMD" command

override the CMD => docker run -it test/gcc bash
