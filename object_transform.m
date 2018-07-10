clc
close all
clear all
prompt = 'co-ordinates of the polygon  ';
p = input(prompt);
si = size(p);
s = si(1,1);
if (s == 4)
    display('it is a square')
else
    display('it is a triangle')
end
augp = [p';ones(1,s)];
display('Cartesian co-ordinates')
cp1 = augp(1:2,1)
cp2 = augp(1:2,2)
cp3 = augp(1:2,3)
if (s == 4)
    cp4 = augp(1:2,4)
end
display('Homogenous co-ordinates')
p1 = augp(:,1)
p2 = augp(:,2)
p3 = augp(:,3)
if (s == 4)
    p4 = augp(:,4)
end
figure
plot(p(1:s,1),p(1:s,2),'red')
axis([-10 20 -10 20])
xlabel('x co-ordinates');
ylabel('y co-ordinates');
hold on
plot([p(s,1),p(1,1)],[p(s,2),p(1,2)],'red');
title('original figure')

%for 2-d transformation
prompt = ('input the value for translation  ');
t = input(prompt);
display('the value of the translation matrix is')
D = [eye(2) , t ; 0 0 1]
display('the translated homogenous co-ordinates')
p1pr1 = D*p1
p2pr1 = D*p2
p3pr1 = D*p3
if (s == 4)
    p4pr1 = D*p4
    ppr1 = [p1pr1 , p2pr1 , p3pr1 , p4pr1];
else
    ppr1 = [p1pr1 , p2pr1 , p3pr1];
end
display('the translated cartesian co-ordinates')
p1pr = p1pr1(1:2,1)
p2pr = p2pr1(1:2,1)
p3pr = p3pr1(1:2,1)
if (s == 4)
    p4pr = p4pr1(1:2,1)
end
ppr1=ppr1';
figure
plot(p(1:s,1),p(1:s,2),'red')
axis([-10 20 -10 20])
xlabel('x co-ordinates');
ylabel('y co-ordinates');
hold on
plot([p(s,1),p(1,1)],[p(s,2),p(1,2)],'red');
hold on
plot(ppr1(1:s,1),ppr1(1:s,2),'blue-*');
title('2-d translation')
hold on
plot([ppr1(s,1),ppr1(1,1)],[ppr1(s,2),ppr1(1,2)],'blue-*');
% legend('original figure:','2-d translated figure')

%for Euclidian
prompt = ('input the value for translation ');
t1 = input(prompt);
prompt = ('input the value of theta for rotation in degree ');
the = input(prompt);
theta = deg2rad(the);
R = [cos(theta) -sin(theta) ; sin(theta) cos(theta)];
display('the value of the Euclidian matrix is')
D = [R, t1 ; 0 0 1]
display('the transformed homogenous co-ordinates')
p1pr1 = D*p1
p2pr1 = D*p2
p3pr1 = D*p3
if (s == 4)
    p4pr1 = D*p4
    ppr2 = [p1pr1 , p2pr1 , p3pr1 , p4pr1];
else
    ppr2 = [p1pr1 , p2pr1 , p3pr1];
end
display('the transformed cartesian co-ordinates')
p1pr = p1pr1(1:2,1)
p2pr = p2pr1(1:2,1)
p3pr = p3pr1(1:2,1)
if (s == 4)
    p4pr = p4pr1(1:2,1)
end
ppr2 = ppr2';
figure
plot(p(1:s,1),p(1:s,2),'red')
axis([-10 20 -10 20])
xlabel('x co-ordinates');
ylabel('y co-ordinates');
hold on
plot([p(s,1),p(1,1)],[p(s,2),p(1,2)],'red');
hold on
plot(ppr2(1:s,1),ppr2(1:s,2),'blue-*');
title('Euclidean Transformation')
hold on
plot([ppr2(s,1),ppr2(1,1)],[ppr2(s,2),ppr2(1,2)],'blue-*');
% legend('original figure:','2-d translated figure')

% for similarity
prompt = ('input the value of translation ');
t2 = input(prompt);
prompt = ('input the value of a ');
a = input(prompt);
prompt = ('input the value of b ');
b = input(prompt);
R1 = [a -b ; b a];
display('the value of the Similarity matrix is')
D = [R1 , t2 ; 0 0 1]
display('the tranformed homogenous co-ordinates')
p1pr1 = D*p1
p2pr1 = D*p2
p3pr1 = D*p3
if (s == 4)
    p4pr1 = D*p4
    ppr3 = [p1pr1 , p2pr1 , p3pr1 , p4pr1];
else
    ppr3 = [p1pr1 , p2pr1 , p3pr1];
end
display('the transformed cartesian co-ordinates')
p1pr = p1pr1(1:2,1)
p2pr = p2pr1(1:2,1)
p3pr = p3pr1(1:2,1)
if (s == 4)
    p4pr = p4pr1(1:2,1)
end
ppr3 = ppr3';
figure
plot(p(1:s,1),p(1:s,2),'red')
axis([-10 20 -10 20])
xlabel('x co-ordinates');
ylabel('y co-ordinates');
hold on
plot([p(s,1),p(1,1)],[p(s,2),p(1,2)],'red');
hold on
plot(ppr3(1:s,1),ppr3(1:s,2),'blue-*');
title('Similarity Transformation')
hold on
plot([ppr3(s,1),ppr3(1,1)],[ppr3(s,2),ppr3(1,2)],'blue-*');
% legend('original figure:','2-d translated figure')

% for affine transformation
prompt = ('enter the value of matrix A  ');
A = input(prompt);
display('the value of the Similarity matrix is')
A
display('the tranformed homogenous co-ordinates')
p1pr1 = A*p1
p2pr1 = A*p2
p3pr1 = A*p3
if (s == 4)
    p4pr1 = A*p4
    ppr4 = [p1pr1 , p2pr1 , p3pr1 , p4pr1];
else
    ppr4 = [p1pr1 , p2pr1 , p3pr1];
end
display('the tranformed cartesian co-ordinates')
p1pr = p1pr1(1:2,1)
p2pr = p2pr1(1:2,1)
p3pr = p3pr1(1:2,1)
if (s == 4)
    p4pr = p4pr1(1:2,1)
end
ppr4 = ppr4';
figure
plot(p(1:s,1),p(1:s,2),'red')
axis([-10 20 -10 20])
xlabel('x co-ordinates');
ylabel('y co-ordinates');
hold on
plot([p(s,1),p(1,1)],[p(s,2),p(1,2)],'red');
hold on
plot(ppr4(1:s,1),ppr4(1:s,2),'blue-*');
title('Affine transformation')
hold on
plot([ppr4(s,1),ppr4(1,1)],[ppr4(s,2),ppr4(1,2)],'blue-*');
%legend('original figure:','2-d translated figure')

% for projection
prompt = ('input the value of matrix H  ');
H = input(prompt);
display('the value of the Similarity matrix is')
H
display('the tranformed homogenous co-ordinates')
p1pr1 = (H*p1)
p1pr1 = p1pr1/p1pr1(3);
p2pr1 = (H*p2)
p2pr1 = p2pr1/p2pr1(3);
p3pr1 = (H*p3)
p3pr1 = p3pr1/p3pr1(3);
if (s == 4)
    p4pr1 = (H*p4)
    p4pr1 = p4pr1/p4pr1(3);
    ppr4 = [p1pr1 , p2pr1 , p3pr1 , p4pr1];
else
    ppr4 = [p1pr1 , p2pr1 , p3pr1];
end
display('the tranformed cartesian co-ordinates')
p1pr = p1pr1(1:2,1)
p2pr = p2pr1(1:2,1)
p3pr = p3pr1(1:2,1)
if (s == 4)
    p4pr = p4pr1(1:2,1)
end
ppr4 = ppr4';
figure
plot(p(1:s,1),p(1:s,2),'red')
axis([-10 20 -10 20])
xlabel('x co-ordinates');
ylabel('y co-ordinates');
hold on
plot([p(s,1),p(1,1)],[p(s,2),p(1,2)],'red');
hold on
plot(ppr4(1:s,1),ppr4(1:s,2),'blue-*');
title('Perspective Transformation')
hold on
plot([ppr4(s,1),ppr4(1,1)],[ppr4(s,2),ppr4(1,2)],'blue-*');
% legend('original figure:','2-d translated figure')
