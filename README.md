<h1 align="center">Evaluation of Routing Protocol Performances in Wireless Sensor Networks</h1>
<p></p>A wireless sensor network can be defined as a network of devices that can communicate the information gathered from a monitored field through wireless links. The data is forwarded through multiple nodes, and with a gateway, the data is connected to other networks like wireless Ethernet. WSN is a wireless network
that consists of base stations and numbers of wireless sensors. These networks are used to monitor physical or environmental conditions like sound, pressure, temperature and co-operatively pass data through the network to a main location. Routing protocol is one of the most important components of WSN. Routing
protocol has to monitor the change of network's topological structure, exchange the routing information, locate the destination node, choose the route and transfer the information through route. The main target of hierarchical routing or cluster based routing is to efficiently maintain the energy usage of sensor nodes by
involving them in multi-hop communication within a particular cluster. Cluster formation is generally based on the energy reserve of sensors and sensors proximity to the Cluster Head. This work presents comparative study of two category of routing protocol, the first is non-hierarchical protocols are DSR and
AODV. The second category is hierarchical protocols are LEACH and HEED. At the end, the comparative analysis of above the protocols presented to show how the cluster formation improves the lifetime of the network in NS2 and MATLAB simulation tool.</p>

# Requirements
- compilator gcc-4.8, g++-4.8 & java
- ns-allinone-2.35 
- ns2 2.34 (<a href="https://sourceforge.net/projects/nsnam/files/ns-2/2.34/">Download ns2<a>)
- ubuntu 22.04
- gnuplot

# How to install ns2 in ubuntu 22.04
## Commands to be used:
$ cat /etc/lsb-release <br>
$ sudo apt update<br>
$ sudo apt install build-essential autoconf automake libxmu-dev <br>

## Requirements of ns2
gcc-4.8 and g++-4.8 => Were avaialble only upto 18.04 which the codename is bionic

$ sudo gedit /etc/apt/sources.list<br>
make an entry in the above file
deb http://in.archive.ubuntu.com/ubuntu/ bionic main universe
$ sudo apt update<br>

## For any GPG error, include the following command
$ sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 3B4FE6ACC0B21F32 <br>

$ sudo apt update <br>
$ sudo apt install gcc-4.8 g++-4.8 <br>

## Make the changes in the follwing files
@CC@ to be replaced with gcc-4.8 <br>
@CPP@ to be replaced with g++-4.8 <br>

ns-allinone-2.35/Makefile.in <br>
/home/anass/ns-allinone-2.35/otcl-1.14/Makefile.in <br>
nam-1.15/Makefile.in <br>
xgraph-12.2/Makefile.in <br>

In all the above places, change @CC@ to gcc-4.8 and @CPP@ @CXX@ to g++-4.8

Open the file : ns-2.35/linkstate/ls.h <br>
in line number 137, change the line erase to this-erase




## Once the installation is over
Set the PATH and LD_LIBRARY_PATH infomration in the file located at /home/anass/.basic <br>

export PATH=$PATH:/home/anass/ns-allinone-2.35/bin:/home/anass/ns-allinone-2.35/tcl8.5.10/unix:/home/anass/ns-allinone-2.35/tk8.5.10/unix <br>
export LD_LIBRARY_PATH=/home/anass/ns-allinone-2.35/otcl-1.14:/home/anass/ns-allinone-2.35/lib
