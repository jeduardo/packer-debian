# Packer for Debian Stable

This sets of scripts used the [Packer tool](https://www.packer.io) to create a virtualbox image of the latest Debian Stretch. It executes a default provisioning process and some extra scripts at the end to cleanup the installation, install the latest stable version of SaltStack, and setup some initial networking.

The machine setup with this script has, by default, 5GB HDD formatted with XFS booting out of GRUB on a legacy BIOS setup.

## Configuration

The installation variables can be configured through a JSON file. One of such files is located under `examples/provision.json`

## Usage

```ShellSession
./build.sh examples/provision.json
```

It takes around 8 minutes to build the image on the machine used for the test run.