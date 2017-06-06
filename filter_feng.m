close;
clear;

i=1:1:200;

y1=sin(i/50*2*pi) + sin(i/8*2*pi);


subplot(2,2,1);
plot(i,y1);

N=10;
factorLP= ones(1,N)/N;
factor= [ 0.2 , 0.2 , 0.2, -0.2,-0.2,-0.2 ] ;%ones(1,N)/N;

y2=filter(factor,1,y1);
y3=filter(factorLP,1,y1);
y4=filter(factorLP,1,y3);

subplot(2,2,2);
plot(i,y2);

subplot(2,2,3);
plot(i,y3);

subplot(2,2,4);
plot(i,y4);

