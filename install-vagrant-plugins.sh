#!/bin/bash
# This script will install the Vagrant Plugin to use vmware_desktop provider

# Install the Vagrant VMware plugin
vagrant plugin install vagrant-vmware-desktop

# Check the Vagrant VMware plugin
vagrant plugin list

# Check the Vagrant VMware plugin version
vagrant plugin list | grep vagrant-vmware-desktop

# Check the Vagrant VMware plugin version
vagrant plugin list | grep vagrant-vmware-desktop | awk '{print $2}'

