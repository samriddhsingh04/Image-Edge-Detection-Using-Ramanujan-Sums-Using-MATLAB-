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
for i=2:565
for j=2:565
neighbour_matrix1=mask1.*In(i-1:i+1,j-1:j+1);
avg_value1=sum(neighbour_matrix1(:));
neighbour_matrix2=mask2.*In(i-1:i+1,j-1:j+1);
avg_value2=sum(neighbour_matrix2(:));
neighbour_matrix3=mask3.*In(i-1:i+1,j-1:j+1);
avg_value3=sum(neighbour_matrix3(:));
neighbour_matrix4=mask4.*In(i-1:i+1,j-1:j+1);
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
Imm(i, j)=max([avg_value1,avg_value2,avg_value3,avg_value4]);
end
end
figure, imshow(uint8(Imm))
SAD=0.0;
Total=0.0;
percent=1.0;
for i=2:563
for j=2:563
SAD=SAD+double(abs(Imm(i,j)))-double(abs(Im(i,j)));
Total=Total+double(Imm(i,j));
end
end
M=max(double(abs(Imm(i,j)-Im(i,j))));
disp(M)
normalSAD=(SAD/(M*567*567));
disp(normalSAD);
SAD=101130e+06
M=17.577
normal SAD=0.1970