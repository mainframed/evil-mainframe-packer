<img src="https://raw.githubusercontent.com/mainframed/evil-mainframe-packer/master/logo.png">

# Evil Mainframe Kali Packer

## Introduction

This project provides Packer and Vagrant configuration and supporting scripts for Kali Linux for use in the **Evil Mainframe** class, it allows the automated creation of standard Kali VMs and tools for use class. The output is an OVF file in the `output-virtualbox-iso` folder that can be imported to VMWare or Virtualbox.

## Users
There is only one user created for use on this system:

* Username: **evilmf**
* Password: **class!**

This user has passwordless `sudo` enabled. Labs are located in `~/Labs` and tools are located in `~/Tools`.

## Requirements
* Packer - [https://www.packer.io/downloads](https://www.packer.io/downloads)
* Virtualization Software Virtualbox  - [https://www.virtualbox.org](https://www.virtualbox.org)
* SSH read only key for Evil Mainframe class curriculumn notes/labs
    * Make sure you run `ssh-agent` before you run packer
    * You don't need the key, it will install just fine but you wont have labs/notes.



## Usage
To build the virtual machine for both VMware and VirtualBox, run the following commands:

* `ssh-agent` (Optional if you have the read only key)
* If using packer version 1.3 use: `packer build evil_mainframe.json`
* If using newer version of packer use: `packer build evil_mainframe.1.6.json`


## Vagrant (untested/Unsupported)

To build the Vagrant box, specify the `packer-vagrant.json` config file instead.

To add the resulting Vagrant box to your local Vagrant installation, use the following command:
```vagrant box add --name kalirolling builds/virtualbox-kali.box```
The `--force` flag can be used to overwrite a previously built box with the same name.

To instantiate a VM with Vagrant using the box you've just added, change into a directory containing an appropriate `Vagrantfile` and issue the `vagrant up` command. An example `Vagrantfile` is provided as part of this project.

# Credits
Original json and script forked from: https://github.com/NJonesUK/kali-packer-vagrant

The preseed configuration file is borrowed and modified from the folks at Offensive Security, their examples can be found at [https://gitlab.com/kalilinux/recipes/kali-preseed-examples](https://gitlab.com/kalilinux/recipes/kali-preseed-examples).


<img src="https://raw.githubusercontent.com/mainframed/evil-mainframe-packer/master/screenshot.png">
