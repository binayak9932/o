s=20;
p=2;
wp=[0.3 0.7];
ws=[0.1 0.9];
w=0:0.1:pi;
[N,wn]=buttord(wp,ws,p,s);
[b,a]=butter(N,wn);
[p,ph]=freqz(b,a,w);
P=20*log(abs(p));
subplot(4,2,1)
plot(w/pi,P)
hold on
xlabel("Frequency(Normalized)")
ylabel("Magnitude Response")
title("Butterworth BPF Filter")
subplot(4,2,2)
plot(w/pi,angle(p))
xlabel("Frequency(Normalized)")
ylabel("Phase Response")
title("Butterworth BPF Filter")
[b,a]=butter(N,wn,'stop');
[p,ph]=freqz(b,a,w);
P=20*log(abs(p));
subplot(4,2,3)
plot(w/pi,P)
hold on
xlabel("Frequency(Normalized)")
ylabel("Magnitude Response")
title("Butterworth BRF Filter")
subplot(4,2,4)
plot(w/pi,angle(p))
xlabel("Frequency(Normalized)")
ylabel("Phase Response")
title("Butterworth BRF Filter")