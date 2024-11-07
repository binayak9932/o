num=[1 0];
den=[1 -0.9];
subplot(3,1,1)
zplane(num,den);
w=-pi:0.1:pi;
h=freqz(num,den,w);
subplot(3,1,2)
stem(w/pi,abs(h))
hold on
subplot(3,1,3)
stem(w/pi,angle(h))
hold on
