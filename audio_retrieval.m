sample_rate = 44800;
nbits = 16;
channels = 4;
device_id = 2;

recorder = audiorecorder(sample_rate, nbits, channels, device_id);
while true
    record(recorder);
    pause(1);
    pause(recorder);
    data = getaudiodata(recorder);
    stop(recorder);
    plot(data(:,1));
end
