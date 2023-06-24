# performance_evaluation_clustering
Performance evaluation of clustering protocols in ns2

# Requirements
- compilator gcc-4.8, g++-4.8 & java
- ns-allinone-2.35 
- ns2 2.34 (https://sourceforge.net/projects/nsnam/files/ns-2/2.34/)
- ubuntu 22.04
- gnuplot
https://deac-fra.dl.sourceforge.net/project/nsnam/allinone/ns-allinone-2.34/ns-allinone-2.34.tar.gz

# how to install ns2 in ubuntu 22.04
## Commands to be used:
$ cat /etc/lsb-release
$ sudo apt update
$ sudo apt install build-essential autoconf automake libxmu-dev

## Requirements of ns2
gcc-4.8 
g++-4.8
Were avaialble only upto 18.04 which the codename is bionic

$ sudo gedit /etc/apt/sources.list
make an entry in the above file
deb http://in.archive.ubuntu.com/ubuntu/ bionic main universe
$ sudo apt update

## For any GPG error, include the following command
$ sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 3B4FE6ACC0B21F32

$ sudo apt update
$ sudo apt install gcc-4.8 g++-4.8

## Make the changes in the follwing files
@CC@ to be replaced with gcc-4.8
@CPP@ to be replaced with g++-4.8

ns-allinone-2.35/Makefile.in
/home/anass/ns-allinone-2.35/otcl-1.14/Makefile.in
nam-1.15/Makefile.in
xgraph-12.2/Makefile.in

In all the above places, change @CC@ to gcc-4.8 
and @CPP@ @CXX@ to g++-4.8

Open the file 
ns-2.35/linkstate/ls.h
in line number 137, change the line erase to this-erase

## Once the installation is over, Set the PATH and LD_LIBRARY_PATH infomration in the file located at 
/home/anass/.basic

export PATH=$PATH:/home/anass/ns-allinone-2.35/bin:/home/anass/ns-allinone-2.35/tcl8.5.10/unix:/home/anass/ns-allinone-2.35/tk8.5.10/unix
export LD_LIBRARY_PATH=/home/anass/ns-allinone-2.35/otcl-1.14:/home/anass/ns-allinone-2.35/lib
