clear;

N=1000;
T=10;
data=zeros(1,N);
for i=1:T:N-4
    data(i)=1;
    data(i+1)=1;
    data(i+2)=1;
    data(i+3)=1;
    data(i+4)=1;
end

data=data- (  sum(data) )/length(data);

figure;
subplot(1,2,1);  plot(  data );
subplot(1,2,2);  plot(  abs(fft(data)) );



