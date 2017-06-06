clear;

f=imread('E:\desktop\matlab_workspace\desk.png');

figure;
imshow(f);


f2=im2double(f);

dim=size(f2);
grey=0;
for i=1:1:dim(1)
    for j=1:1:dim(2)
        grey= (( f2(i,j,1)*f2(i,j,1)+f2(i,j,2)*f2(i,j,2)+f2(i,j,3)*f2(i,j,3) )/3)^0.5;
        f2(i,j,1)=grey;
        f2(i,j,2)=grey;
        f2(i,j,3)=grey;
    end
end
f2=uint8(f2.*255.*0.95);
figure;
imshow(f2,[]);


