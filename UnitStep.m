T=input("Enter the time period")
for t=-10:1:10
  if(t<0)
  y=0;
  else
  y=1;
end
  stem(t,y)
  hold on
  grid on
end
axis([-T T 3 -3])
xlabel('Time')
ylabel('Amplitude')
title('Unit Step Signal')
