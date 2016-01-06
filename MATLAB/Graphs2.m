% Read Files
fileIDCO = fopen('COSensor2.txt','r');
CO = fscanf(fileIDCO,'%f');
CO = abs(CO);
fclose(fileIDCO);

fileID_TE = fopen('TESensor2.txt','r');
TE = fscanf(fileID_TE,'%f');
fclose(fileID_TE);

time = [0:5:8900];
[a,b]=size(time)

%Graphs
%plot(time(1:b),CO(1:b),'b-','LineWidth',2);
plot(time(1:b),TE(1:b),'r-');
%plot(TE);