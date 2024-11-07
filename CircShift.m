x=[2 1 4 5 6 3 1 7];
N=length(x);
subplot(3,1,1)
stem(x)
hold on
xlabel("Frequency")
ylabel("Amplitude")
title("x(n)")
n=0:1:N-1;
N1=mod(n-3,N);
y1=x(N1+1);
subplot(3,1,2)
stem(y1)
hold on
xlabel("Frequency")
ylabel("Amplitude")
title("x(n-3)")
N2=mod(n+3,N);
y2=x(N2+1);
subplot(3,1,3)
stem(y2)
hold on
xlabel("Frequency")
ylabel("Amplitude")
title("x(n+3)")
