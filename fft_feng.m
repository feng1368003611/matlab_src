clear;
close;

i=0:1:200;
 x=sin( i/40 *2*pi  );
 subplot(2,3,1); plot( i,x,'b.-'  );title('ԭ����');
 
 subplot(2,3,2); plot( i,real(fft(x)),'b.-'  );title('ʵ��');
 subplot(2,3,3); plot( i,imag(fft(x)),'b.-'  );title('�鲿');
 subplot(2,3,6); plot( i,abs(fft(x)),'b.-'  );title('ģ');
 subplot(2,3,5); plot( i,angle(fft(x)),'b.-'  );title('��λ');
 
 subplot(2,3,4); plot( i,ifft(fft(x)),'b.-'  );title('��任');