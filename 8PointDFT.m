N=8;
x=[1 0 1 0 zeros(1,4)];
y=zeros(1,N);
z=zeros(1,N);
for k=0:1:N-1
  for n=0:1:N-1
    y(k+1)=y(k+1)+x(n+1)*exp((-j*2*pi*k*n)/N);
  endfor
end
subplot(4,1,1)
stem(x)
hold on
grid on
xlabel("Frequency")
ylabel("Amplitude")
title("Input of DTFT")
subplot(4,1,2)
stem(y)
hold on
grid on
xlabel("Frequency")
ylabel("Amplitude")
title("Ouput of DTFT")
for n=0:1:N-1
  for k=0:1:N-1
    z(n+1)=z(n+1)+((1/N)*(y(k+1)*exp((j*2*pi*k*n)/N)));
  endfor
end
subplot(4,1,3)
stem(y)
hold on
grid on
xlabel("Frequency")
ylabel("Amplitude")
title("Input of IDFT")
subplot(4,1,4)
stem(z)
hold on
grid on
xlabel("Frequency")
ylabel("Amplitude")
title("Ouput of IDFT")
