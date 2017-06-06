N=200;
i=0:1:N-1;
x1=sin( i /20 *2*pi  );
x2=sin( i /4 *2*pi  );

x3=x1.*x2;

figure; 
subplot(3,2,1); plot(i,x1);grid on;
subplot(3,2,2); plot(i,abs(fft(x1)));grid on;

subplot(3,2,3); plot(i,x2);grid on;
subplot(3,2,4); plot(i,abs(fft(x2)));grid on;

subplot(3,2,5); plot(i,x3);grid on;
subplot(3,2,6); plot(i,abs(fft(x3)));grid on;
