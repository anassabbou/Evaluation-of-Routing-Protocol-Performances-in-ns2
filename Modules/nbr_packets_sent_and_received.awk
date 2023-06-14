BEGIN {  
  
countcyl=0;  
    packetsum=0; #The total number of packets sent and received at the current time  
  
lasttime=0;  
    time[0]=0;  
    sum[0]=0;  
}  
{  
  
simtime = $1;  
nodeid = $2;  
packet = $3; #Read the current time, the number of packets sent by the current node and successfully received  
  
if (simtime>lasttime ) { #specific algorithm  
     packtsum=0;  
    countcyl++;  
    lasttime=simtime;  
    time[countcyl]=simtime;  
}  
  
if (simtime==lasttime) {  
   packetsum=packetsum+packet;  
   sum[countcyl]=packetsum;  
}  
}  
END { #Corresponding time period, print the total amount of packets sent.  
for(i=0;i<=countcyl;i++)  
printf( "%f %f\n",time[i],sum[i]);  
}
