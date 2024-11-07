s=100;
p=50;
ws=0.2;
wp=0.1;
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
title("Butterworth LPF Filter")
subplot(4,2,2)
plot(w/pi,angle(p))
xlabel("Frequency(Normalized)")
ylabel("Phase Response")
title("Butterworth LPF Filter")
[b,a]=butter(N,wn,'high');
[p,ph]=freqz(b,a,w);
P=20*log(abs(p));
subplot(4,2,3)
plot(w/pi,P)
hold on
xlabel("Frequency(Normalized)")
ylabel("Magnitude Response")
title("Butterworth HPF Filter")
subplot(4,2,4)
plot(w/pi,angle(p))
xlabel("Frequency(Normalized)")
ylabel("Phase Response")
title("Butterworth HPF Filter")
