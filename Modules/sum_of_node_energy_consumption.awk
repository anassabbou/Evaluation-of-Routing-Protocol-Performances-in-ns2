BEGIN {  
  
countcyl=0; #Counter, used to record the current number of rounds or the current period  
energysum=0; #Used to temporarily store the sum of node energy consumption in the current period  
  
lasttime=0; #Record the current last time  
time[0]=0; #store the time of each (round) segment  
sum[0]=0; #store the consumed energy corresponding to each segment time  
}  
{  
  
simtime = $1; #The value of the first field in the file, the current time  
nodeid = $2; #. . . The value of the second field, node ID  
nodeenergy = $3; #. . . The value of the third field, the energy used by the current node  
  
if (simtime>lasttime ) { #Here is a simple way to extract each time period, how much energy the node consumes in total  
   energysum=0;  
    countcyl++;  
    lasttime=simtime;  
    time[countcyl]=simtime;  
}  
  
if (simtime==lasttime) {  
    if (nodeenergy<2.0) {  
   energysum=energysum+nodeenergy;  
   sum[countcyl]=energysum;  
}  
else if (nodeenergy>=2.0) { #The initial total energy of the node is 2  
   energysum=energysum+2.0;  
   sum[countcyl]=energysum;  
}  
}  
}  
END { #Corresponding to the time period, get the energy consumption and print it  
for(i=0;i<=countcyl;i++)  
printf( "%f %f\n",time[i],sum[i]);  
}
