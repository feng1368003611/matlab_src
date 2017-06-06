clear;

i=1:1:100;

x=zeros(1,100);

for j=1:1:100
    for k=j:j:100
        x(k)=x(k)+1;
    end
end

x = mod( x,2);

index = find(x>0);
index