# Calculate the number of remaining nodes at different times  
  
BEGIN {  
  
  countcyl=0;  
  totalleft=0;  
  
  lasttime=0;  
  time[0]=0;  
  node=0;  
  total[0]=100;  
}  
{  
  
simtime = $1;  
nodeid = $2;  
statenode = $3;  
  
if (simtime>lasttime) {  
    countcyl++;  
    lasttime=simtime;  
    time[countcyl]=simtime;  
    totalleft=0;  
      }  
  
if (statenode==1)  
     totalleft++;  
     total[countcyl]=totalleft;  
}  
end {  
for(i=0;i<=countcyl;i++)  
printf( "%f %d\n",time[i],total[i]);  
}
