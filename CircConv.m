N=3;
x=[1 1 2];
h=[1 2 0];
subplot(3,1,1)
X=fft(x,N);
stem(X)
hold on
xlabel("Frequency")
ylabel("Amplitude")
title("DFT of x")
subplot(3,1,2)
H=fft(h,N);
stem(H)
hold on
xlabel("Frequency")
ylabel("Amplitude")
title("DFT of h")
subplot(3,1,3)
y=X.*H;
Y=ifft(y,N);
stem(Y)
hold on
xlabel("Frequency")
ylabel("Amplitude")
title("IDFT of X*H")
