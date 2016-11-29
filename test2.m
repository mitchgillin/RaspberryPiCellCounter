

data=[];
tic
for i=1:7
   
    [time, cfuArea]=CountCFU(1500);
    data(i,1)=time;
    data(i,2)=cfuArea;
    pause(2);
    data(i,1)=data(i,1)-data(1,1);
end


plot(data(:,1),data(:,2));
title('Growth Rate of Bacteria');
xlabel('Time (hours)');
ylabel('% confluence');