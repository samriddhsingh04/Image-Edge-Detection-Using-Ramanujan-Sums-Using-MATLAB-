I=double((imread('C:\Users\hp\Downloads\lenaa.png')));
In=I;
mask1=[-1, -1, 4, -1, -1;-1, -1, 4, -1, -1;-1, -1, 4, -1, -1;-1, -1, 4, -1, -1;-1, -1, 4, -1, -1];
mask2=[-1, -1, -1, -1, -1;-1, -1, -1, -1, -1;4, 4, 4, 4, 4;-1, -1, -1, -1, -1;-1, -1, -1, -1, -1];
mask3=[4, -1, -1, -1, -1;-1, 4, -1, -1, -1;-1, -1, 4, -1, -1;-1, -1, -1, 4, -1;-1, -1, -1, -1, 4];
mask4=[-1, -1, -1, -1, 4;-1, -1, -1, 4, -1;-1, -1, 4, -1, -1;-1, 4, -1, -1, -1;4, -1, -1, -1, -1];
m1=normalize(mask1);
m1=normalize(mask1);
m2=normalize(mask2);
m3=normalize(mask3);
m4=normalize(mask4);
m1=flipud(m1);
m1=fliplr(m1);
m2=flipud(m2);
m2=fliplr(m2);
m3=flipud(m3);
m3=fliplr(m3);
m4=flipud(m4);
m4=fliplr(m4);
for i=2:563
for j=2:563
neighbour_matrix1=m1.*In(i-1:i+3,j-1:j+3);
avg_value1=sum(neighbour_matrix1(:));
neighbour_matrix2=m2.*In(i-1:i+3,j-1:j+3);
avg_value2=sum(neighbour_matrix2(:));
neighbour_matrix3=m3.*In(i-1:i+3,j-1:j+3);
avg_value3=sum(neighbour_matrix3(:));
neighbour_matrix4=m4.*In(i-1:i+3,j-1:j+3);
avg_value4=sum(neighbour_matrix4(:));
I(i, j)=max([avg_value1,avg_value2,avg_value3,avg_value4]);
end
end
figure, imshow(uint8(I))