clear;

i=1:1:1000;

x=   128 + 128 * sin( i /100 *2*pi) ;
x=floor(x.*0.7) ;

x2=x.*2;
index=find(x2>255);

y = x2;
y(index) = x2(index) -256;
y=y./2

x=x-sum(x)/length(x);
y=y-sum(y)/length(y);

figure;
subplot(2,2,1);plot(x,'b');
subplot(2,2,2);plot(abs(fft(x)),'b');

subplot(2,2,3);plot(y,'R');
subplot(2,2,4);plot(abs(fft(y)),'R');
