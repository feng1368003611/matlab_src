clear;

N=100;
led=zeros(N,N);

for i=1:1:N
    for j=i:i:N
            led(j,i)=1;
    end
end

fprintf('\n');

for i=1:1:N
    index=i; value=mod( sum(led(i,:)) ,2 );
    if(value~=0)
      fprintf('%3d:',index);
      fprintf('%d\n',value);
    end
end