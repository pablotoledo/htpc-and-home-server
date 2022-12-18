#!/bin/bash

#This script will define the environment variables in a Ubuntu 22.04 LTS server

#Define the variables
STORAGE_MEDIA="/media/usb"
STORAGE_MEDIA_MOUNT="/media/usb"
STORAGE_MEDIA_MOUNT_POINT="/media/usb"
STORAGE_MEDIA_MOUNT_POINT="/media/usb"

# Now all previous variables will be exported to the system and defined at bashrc file
export STORAGE_MEDIA
export STORAGE_MEDIA_MOUNT
export STORAGE_MEDIA_MOUNT_POINT
export STORAGE_MEDIA_MOUNT_POINT

# Now we will add the variables to the bashrc file and added to PATH
echo "export STORAGE_MEDIA=$STORAGE_MEDIA" >> ~/.bashrc
echo "export STORAGE_MEDIA_MOUNT=$STORAGE_MEDIA_MOUNT" >> ~/.bashrc
echo "export STORAGE_MEDIA_MOUNT_POINT=$STORAGE_MEDIA_MOUNT_POINT" >> ~/.bashrc
echo "export STORAGE_MEDIA_MOUNT_POINT=$STORAGE_MEDIA_MOUNT_POINT" >> ~/.bashrc

# Now we will add the variables to the PATH
echo "export PATH=$PATH:$STORAGE_MEDIA" >> ~/.bashrc
echo "export PATH=$PATH:$STORAGE_MEDIA_MOUNT" >> ~/.bashrc
echo "export PATH=$PATH:$STORAGE_MEDIA_MOUNT_POINT" >> ~/.bashrc
echo "export PATH=$PATH:$STORAGE_MEDIA_MOUNT_POINT" >> ~/.bashrc

# Now we will reload the bashrc file
source ~/.bashrc

# Now we will check if the variables are defined
echo $STORAGE_MEDIA
echo $STORAGE_MEDIA_MOUNT
echo $STORAGE_MEDIA_MOUNT_POINT
echo $STORAGE_MEDIA_MOUNT_POINT

# Now we will also define this PATH for root user
sudo su
echo "export STORAGE_MEDIA=$STORAGE_MEDIA" >> ~/.bashrc
echo "export STORAGE_MEDIA_MOUNT=$STORAGE_MEDIA_MOUNT" >> ~/.bashrc
echo "export STORAGE_MEDIA_MOUNT_POINT=$STORAGE_MEDIA_MOUNT_POINT" >> ~/.bashrc
echo "export STORAGE_MEDIA_MOUNT_POINT=$STORAGE_MEDIA_MOUNT_POINT" >> ~/.bashrc

# Now we will add the variables to the PATH
echo "export PATH=$PATH:$STORAGE_MEDIA" >> ~/.bashrc
echo "export PATH=$PATH:$STORAGE_MEDIA_MOUNT" >> ~/.bashrc
echo "export PATH=$PATH:$STORAGE_MEDIA_MOUNT_POINT" >> ~/.bashrc
echo "export PATH=$PATH:$STORAGE_MEDIA_MOUNT_POINT" >> ~/.bashrc

# Now we will reload the bashrc file
source ~/.bashrc

# Now we will check if the variables are defined
echo $STORAGE_MEDIA
echo $STORAGE_MEDIA_MOUNT
echo $STORAGE_MEDIA_MOUNT_POINT
echo $STORAGE_MEDIA_MOUNT_POINT
