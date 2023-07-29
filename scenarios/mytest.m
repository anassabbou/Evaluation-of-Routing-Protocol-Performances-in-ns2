close all
clear
clc

n=0:39;

AODV = [48.330784 48.316151 48.301033 48.313792 48.342459 48.33534 48.321388 48.30459 48.333618 48.354036 48.336432 48.316717 48.283253 48.324537 48.348242 48.301995 48.290837 48.312098 48.334586 48.359824 48.330259 48.313486 48.3202 48.341993 48.37714 48.353311 48.333757 48.330525 48.335815 48.354707 48.31434 48.320433 48.308399 48.309186 48.328625 48.348441 48.344141 48.350876 48.365713 48.399579];

DSR=[48.519184 48.496783 48.480635 48.488096 48.50401 48.517767 48.492954 48.477567 48.488524 48.509193 48.520331 48.493408 48.478622 48.49874 48.522371 48.51538 48.47984 48.489274 48.514741 48.538585 48.499851 48.482007 48.489309 48.506207 48.530537 48.504901 48.474907 48.487018 48.490965 48.509906 48.528973 48.512823 48.50565 48.512889 48.527518 48.507533 48.465745 48.473967 48.492493 48.541224];

figure,plot(n,AODV,'b-o'),hold on
plot(n,DSR,'r-h')

legend('AODV','DSR')
grid on
xlabel('Noeuds')
ylabel('Energie r�siduel')
axis([48.15 48.6])