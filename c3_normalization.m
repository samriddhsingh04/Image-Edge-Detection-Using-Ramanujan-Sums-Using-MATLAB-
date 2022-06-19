I=double((imread('C:\Users\hp\Downloads\lenaa.png')));
In=I;
mask1=[-1, 2, -1;-1, 2, -1;-1, 2, -1];
mask2=[-1, -1, -1;2, 2, 2;-1, -1, -1];
mask3=[2, -1, -1;-1, 2, -1;-1, -1, 2];
mask4=[-1, -1, 2;-1, 2, -1;2, -1, -1];
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
for i=2:size(I, 1)-1
for j=2:size(I, 2)-1
neighbour_matrix1=mask1.*In(i-1:i+1,j-1:j+1);
avg_value1=sum(neighbour_matrix1(:));
neighbour_matrix2=mask2.*In(i-1:i+1,j-1:j+1);
avg_value2=sum(neighbour_matrix2(:));
neighbour_matrix3=mask3.*In(i-1:i+1,j-1:j+1);
avg_value3=sum(neighbour_matrix3(:));
neighbour_matrix4=mask4.*In(i-1:i+1,j-1:j+1);
avg_value4=sum(neighbour_matrix4(:));
I(i, j)=max([avg_value1,avg_value2,avg_value3,avg_value4]);
end
end
figure, imshow(uint8(I));