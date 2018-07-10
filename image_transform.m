clc
close all
clear all
C = ones(378,330);
A = imread('KittyBW.png');
figure
imshow(A)
title('original image')

% for 2-d translation
prompt = ('input the value for translation  ');
t = input(prompt);
for i=1:378
    for j=1:330
        if (A(i,j)== 0)
            p = [i;j;1];
            ppr = [eye(2) , t ; 0 0 1]*p;
            ppr = abs(ppr);
            C(ppr(1),ppr(2)) = 0;
        end
    end
end
figure
imshowpair(A,C,'montage')
title('2-D Translation')

% for Euclidean
D = ones(378,330);
prompt = ('input the value for translation  ');
t = input(prompt);
prompt1 = ('input the value of rotation in degrees  ');
the = input(prompt1);
theta = degtorad(the);
R = [cos(theta) -sin(theta) ; sin(theta) cos(theta)];
for i=1:378
    for j=1:330
        if (A(i,j)== 0)
            p = [i;j;1];
            ppr = [R , t ; 0 0 1]*p;
            ppr = abs(round(ppr));
            D(ppr(1),ppr(2)) = 0;
        end
    end
end
figure
imshowpair(A,D,'montage')
title('Euclidean transformation')

% for Similarity transformation
E = ones(378,330);
prompt = ('input the value for translation  ');
t = input(prompt);
prompt = ('input the value of a  ');
a = input(prompt);
prompt = ('input the value of b  ');
b = input(prompt);
R = [a -b ; b a];
for i=1:378
    for j=1:330
        if (A(i,j)== 0)
            p = [i;j;1];
            ppr = [R , t ; 0 0 1]*p;
            ppr = abs(round(ppr));
            E(ppr(1),ppr(2)) = 0;
        end
    end
end
figure
imshowpair(A,E,'montage')
title('Similarity Transformation')

% for Affine transformation
F = ones(378,330);
prompt = ('input the value of affine matrix  ');
c = input(prompt);
for i=1:378
    for j=1:330
        if (A(i,j)== 0)
            p = [i;j;1];
            ppr = [c ; 0 0 1]*p;
            ppr = abs(round(ppr));
            F(ppr(1),ppr(2)) = 0;
        end
    end
end
figure
imshowpair(A,F,'montage')
title('Affine Transformation')

% for Perspective transformation
G = ones(378,330);
prompt = ('input the value of H matrix  ');
H = input(prompt);
for i=1:378
    for j=1:330
        if (A(i,j)== 0)
            p = [i;j;1];
            ppr = H*p;
%             ppr = ppr/ppr(3);
            ppr = abs(round(ppr));
            G(ppr(1),ppr(2)) = 0;
        end
    end
end
figure
imshowpair(A,G,'montage')
title('Perspective Transformation')

