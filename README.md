# Evil Mainframe Kali Packer

## Introduction

This project provides Packer and Vagrant configuration and supporting scripts for Kali Linux for use in the **Evil Mainframe** class, it allows the creation of both standard Kali VMs and Vagrant boxes. The output is an OVF file in the `output-virtualbox-iso` folder that can be imported to VMWare or Virtualbox.

## Users
There is only one user created for use on this system:

* Username: evilmf
* Password: class!

This user has passwordless `sudo` enabled. Labs are located in `~/Labs` and tools are located in `~Labs/Tools`.

## Requirements
* Packer - [https://www.packer.io](https://www.packer.io)
* Virtualization Software Virtualbox  - [https://www.virtualbox.org](https://www.virtualbox.org)
* (optionally) Vagrant - [https://www.vagrantup.com](https://www.vagrantup.com)
    * If using VMware, you'll also need a license to the Vagrant VMware plugin.
* SSH read only key for Evil Mainframe class curriculumn notes/labs
    * You don't need the key, it will install just fine but you wont have labs/notes.

## Usage
To build the virtual machine for both VMware and VirtualBox, run the following command:
```packer build packer.json```

To only build one or the other
```packer build -only=vmware-iso packer.json```
```packer build -only=virtualbox-iso packer.json```

## Vagrant (untested)

To build the Vagrant box, specify the `packer-vagrant.json` config file instead.

To add the resulting Vagrant box to your local Vagrant installation, use the following command:
```vagrant box add --name kalirolling builds/virtualbox-kali.box```
The `--force` flag can be used to overwrite a previously built box with the same name.

To instantiate a VM with Vagrant using the box you've just added, change into a directory containing an appropriate `Vagrantfile` and issue the `vagrant up` command. An example `Vagrantfile` is provided as part of this project.

# Credits
Original json and script forked from: https://github.com/NJonesUK/kali-packer-vagrant

The preseed configuration file is borrowed and modified from the folks at Offensive Security, their examples can be found at [https://gitlab.com/kalilinux/recipes/kali-preseed-examples](https://gitlab.com/kalilinux/recipes/kali-preseed-examples).
