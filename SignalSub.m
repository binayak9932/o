t=-20:1:20;
u1=(t>=-10);
subplot(3,1,1)
stem(t,u1)
hold on
grid on
xlabel("Time")
ylabel("Amplitude")
title("First signal")
u2=(t>=10);
subplot(3,1,2)
stem(t,u2)
hold on
grid on
xlabel("Time")
ylabel("Amplitude")
title("Second signal")
y=u1-u2;
subplot(3,1,3)
stem(t,y)
hold on
grid on
xlabel("Time")
ylabel("Amplitude")
title("Signal subtraction")
