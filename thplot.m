
clear
close all

temp_web='http://192.168.4.1/temperature';
hum_web='http://192.168.4.1/humidity';
temp_record=[];
hum_record=[];
xlabel('時間')
ylabel('溫度')
value=1;
while(1)
    temp_record(value)=str2num(webread(temp_web));
    hum_record(value)=str2num(webread(hum_web));
    disp(temp_record(value))
    disp(hum_record(value))
    value=value+1;
    hold on 

    subplot(2,1,1)
    
    plot(temp_record)
    xlabel('T')
    ylabel('degree')
    title('temp')

    subplot(2,1,2)
    plot(hum_record)
    xlabel('T')
    ylabel('%')
    title('hum')
    hold off
    
    pause(1)
    
end
