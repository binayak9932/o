T=input("Enter time period")
t=-T:1:T;
x=(t<10);
subplot(2,1,1)
stem(t,x)
hold on
grid on
axis([-50 50 -3 3])
title("Graph of x(n)")
num=[1 0]
den=[1 -0.5]
y=filter(num,den,x)
subplot(2,1,2)
stem(t,y)
hold on
grid on
axis([-50 50 -3 3])
title("Graph of y(n)")
