clear;

f=imread('E:\desktop\matlab_workspace\desk_char.png');

figure;
imshow(f);


f2=im2double(f);

dim=size(f2);
grey=0;

XN= 10  ;

for i=1:1:dim(1)
    for j=1:1:dim(2)
	
	
	
        %grey= (( f2(i,j,1)*f2(i,j,1)+f2(i,j,2)*f2(i,j,2)+f2(i,j,3)*f2(i,j,3) )/3)^0.5;
		
        f2(i,j,1)=  sum(  f2(  i,max(  j-XN+1,1    ):j  ,1  )   )/min(j,XN);%   f2(i,j-mod(j,XN)+1,1);
        f2(i,j,2)=  sum(  f2(  i,max(  j-XN+1,1    ):j  ,2  )   )/min(j,XN);
        f2(i,j,3)=  sum(  f2(  i,max(  j-XN+1,1    ):j  ,3  )   )/min(j,XN);
		
		
    end
end
f2=uint8(f2.*255.*0.95);
figure;
imshow(f2,[]);