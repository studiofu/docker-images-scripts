#export image

docker export -o export_image.tar sshd-test


#import image
cat export_image.tar | docker import - test/sshd:v1.0

