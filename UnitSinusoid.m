T=input("Enter the time period")
a=input("enter the amplitude")
t=-T:0.1:T
y=a*sin((2*pi)/T*t);
stem(t,y)
hold on
grid on
axis([-T T 3 -3])
xlabel('Time')
ylabel('Amplitude')
title('Sinusoidal Signal')
