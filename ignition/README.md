# Introduction

Here we use Ignition Fortress as an example, which is the latest LTS.

# Installation

* Install necessary packages

```bash
sudo apt update
sudo apt install lsb-release wget gnupg
```

* Install Ignition

```bash
sudo sh -c 'echo "deb http://packages.osrfoundation.org/gazebo/ubuntu-stable `lsb_release -cs` main" > /etc/apt/sources.list.d/gazebo-stable.list'
sudo sh -c 'echo "deb http://packages.osrfoundation.org/gazebo/ubuntu-nightly `lsb_release -cs` main" > /etc/apt/sources.list.d/gazebo-nightly.list'
wget http://packages.osrfoundation.org/gazebo.key -O - | sudo apt-key add -
sudo apt update
sudo apt install ignition-fortress
```

Refer to https://ignitionrobotics.org/docs/fortress/install_ubuntu

# Usage

```bash
# Run ignition
ign gazebo
# Show error, warning, information, debug message
ign gazebo -v 4
# Load world
ign gazebo shapes.sdf -v 4
```

Refer to https://ignitionrobotics.org/docs/all/getstarted

You can find more ignition world here: https://github.com/ignitionrobotics/ign-gazebo/tree/main/examples/worlds
