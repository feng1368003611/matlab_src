%clear;


i=1:1:1000;

x= sin( i /50  *2*pi ) + rand(1,length(i));%sin( i /3  *2*pi );

Num= [0.0004   -0.0328   -0.0384    0.0778    0.2880    0.3985    0.2880    0.0778 -0.0384   -0.0328    0.0004];

y = filter(Num,[1],x);


figure;
subplot(2,2,1); plot(x);subplot(2,2,2); plot(abs(fft(x)));
subplot(2,2,3); plot(y);subplot(2,2,4); plot(abs(fft(y)));
