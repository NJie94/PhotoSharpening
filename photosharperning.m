I= double(imread('*photoname.png'));
H = double(imguidedfilter(uint8(I))) - I + 128;
G = imfilter(H,fspecial('gaussian',[3 3],100));
opacity = 50;
Dst = (I*(100 - opacity)+(I+2*G-256)*opacity)/100;
imshow([uint8(I) uint8(Dst)]); 
