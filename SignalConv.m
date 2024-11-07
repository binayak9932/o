t=0:1:2;
u1=[2 3 4];
subplot(3,1,1)
stem(t,u1)
hold on
grid on
xlabel("Time")
ylabel("Amplitude")
title("First signal")
u2=[1 0 2];
subplot(3,1,2)
stem(t,u2)
hold on
grid on
xlabel("Time")
ylabel("Amplitude")
title("Second signal")
t=-10:1:10;
y=conv(u1,u2);
subplot(3,1,3)
stem(y)
hold on
grid on
xlabel("Time")
ylabel("Amplitude")
title("Signal convolution")
