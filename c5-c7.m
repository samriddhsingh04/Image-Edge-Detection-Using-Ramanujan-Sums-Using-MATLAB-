I=double((imread('C:\Users\hp\Downloads\lenaa.png')));
In=I;
mask1=[-1, -1, -1, 6, -1, -1, -1;-1, -1, -1, 6, -1, -1, -1;-1, -1, -1, 6, -1, -1, -1;-1, -1, -1, 6, -1, -1, -1;-1, -1, -1,
6, -1, -1, -1;-1, -1, -1, 6, -1, -1, -1;-1, -1, -1, 6, -1, -1, -1];
mask2=[-1, -1, -1, -1, -1, -1, -1;-1, -1, -1, -1, -1, -1, -1;-1, -1, -1, -1, -1, -1, -1;6, 6, 6, 6, 6, 6, 6;-1, -1, -1,
-1, -1, -1, -1;-1, -1, -1, -1, -1, -1, -1;-1, -1, -1, -1, -1, -1, -1];
mask3=[6, -1, -1, -1, -1, -1, -1;-1, 6, -1, -1, -1, -1, -1;-1, -1, 6, -1, -1, -1, -1;-1, -1, -1, 6, -1, -1, -1;-1, -1, -1,
-1, 6, -1, -1;-1, -1, -1, -1, 6, -1, -1;-1, -1, -1, -1, -1, -1, 6];
mask4=[-1, -1, -1, -1, -1, -1, 6;-1, -1, -1, -1, -1, 6, -1;-1, -1, -1, -1, 6, -1, -1;-1, -1, -1, 6, -1, -1, -1;-1, -1, 6,
-1, -1, -1, -1;-1, 6, -1, -1, -1, -1, -1;6, -1, -1, -1, -1, -1, -1];
mask1=flipud(mask1);
mask1=fliplr(mask1);
mask2=flipud(mask2);
mask2=fliplr(mask2);
mask3=flipud(mask3);
mask3=fliplr(mask3);
mask4=flipud(mask4);
mask4=fliplr(mask4);
for i=2:561
for j=2:561
neighbour_matrix1=mask1.*In(i-1:i+5,j-1:j+5);
avg_value1=sum(neighbour_matrix1(:));
neighbour_matrix2=mask2.*In(i-1:i+5,j-1:j+5);
avg_value2=sum(neighbour_matrix2(:));
neighbour_matrix3=mask3.*In(i-1:i+5,j-1:j+5);
avg_value3=sum(neighbour_matrix3(:));
neighbour_matrix4=mask4.*In(i-1:i+5,j-1:j+5);
avg_value4=sum(neighbour_matrix4(:));
Im(i, j)=max([avg_value1,avg_value2,avg_value3,avg_value4]);
end
end
figure, imshow(uint8(Im));
I=double((imread('C:\Users\hp\Downloads\lenaa.png')));
In=I;
mask1=[-1, -1, 4, -1, -1;-1, -1, 4, -1, -1;-1, -1, 4, -1, -1;-1, -1, 4, -1, -1;-1, -1, 4, -1, -1];
mask2=[-1, -1, -1, -1, -1;-1, -1, -1, -1, -1;4, 4, 4, 4, 4;-1, -1, -1, -1, -1;-1, -1, -1, -1, -1];
mask3=[4, -1, -1, -1, -1;-1, 4, -1, -1, -1;-1, -1, 4, -1, -1;-1, -1, -1, 4, -1;-1, -1, -1, -1, 4];
mask4=[-1, -1, -1, -1, 4;-1, -1, -1, 4, -1;-1, -1, 4, -1, -1;-1, 4, -1, -1, -1;4, -1, -1, -1, -1];
mask1=flipud(mask1);
mask1=fliplr(mask1);
mask2=flipud(mask2);
mask2=fliplr(mask2);
mask3=flipud(mask3);
mask3=fliplr(mask3);
mask4=flipud(mask4);
mask4=fliplr(mask4);
for i=2:563
for j=2:563
neighbour_matrix1=mask1.*In(i-1:i+3,j-1:j+3);
avg_value1=sum(neighbour_matrix1(:));
neighbour_matrix2=mask2.*In(i-1:i+3,j-1:j+3);
avg_value2=sum(neighbour_matrix2(:));
neighbour_matrix3=mask3.*In(i-1:i+3,j-1:j+3);
avg_value3=sum(neighbour_matrix3(:));
neighbour_matrix4=mask4.*In(i-1:i+3,j-1:j+3);
avg_value4=sum(neighbour_matrix4(:));
Imm(i, j)=max([avg_value1,avg_value2,avg_value3,avg_value4]);
end
end
figure, imshow(uint8(Imm))
SAD=0.0;
Total=0.0;
percent=1.0;
for i=2:561
for j=2:561
SAD=SAD+abs(double(abs(Imm(i,j)))-double(abs(Im(i,j))));
Total=Total+double(Imm(i,j));
end
end
M=max(double(abs(Imm(i,j)-Im(i,j))));
disp(M)
normalSAD=(SAD/(M*567*567));
disp(normalSAD);
SAD=7503907
M=78
Normal SAD=0.2992