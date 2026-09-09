# casa
homedir container

This container will have all the userland tools needed to have a typical shell account

## S3 file storage
/data should be an S3 mount to a linode object store

rclone should be used

# how to build the container

docker built -t casa .


# how to run the container

docker run -it casa
docker run -it -v ~/.config:/root/.config casa

## linode-cli and python virtual environment

## rclone mount

rclone mount 

## more rclone notes

linode-cli obj --cluster us-lax-1 ls
rclone mkdir casa-data:foo




