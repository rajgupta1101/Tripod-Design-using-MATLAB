%%draw the objective function and the constraints

[H,D]=meshgrid(1.0:1.0:600.0, 0.1:0.1:60.0);
%%objective Function
f=6.59734e-3*(D.^2).*(sqrt(H.^2+4800));

%%constraints function
g1=2.546479e4*sqrt(H.^2+4800)./((D.^2).*H)-1.5e4;
g2=2.0e4*sqrt(H.^2+4800)./H-1.816774e6*(D.^4)./(H.^2+4800);
g3=H-500;
g4=50-H;
g5=D-50;
g6=0.5-D;

cla reset

axis([-20,600,-2,60])
xlabel('H'),ylabel('D')
title('Design Of Tripot')
hold on
cv=[0 0];
const1=contour(H,D,g1,cv,'k');
text(550,3,'g1')
cv1=[1000.0:1000.0:20000.0];
const11=contour(H,D,g1,cv1,'m');
const2=contour(H,D,g2,cv,'k');
text(400,4.5,'g2')
cv2=[1000.0:1000.0:5000.0];
const21=contour(H,D,g2,cv2,'r');
const3=contour(H,D,g3,cv,'k');
cv3=[0.5:0.5:5.0];
text(515,30,'g3')
const31=contour(H,D,g3,cv3,'r');
const4=contour(H,D,g4,cv,'k');
text(20,30,'g4')
const41=contour(H,D,g4,cv3,'r');
const5=contour(H,D,g5,cv,'k');
cv5=[0.05:0.05:0.5];
text(250,53,'g5')
const51=contour(H,D,g5,cv5,'r');
const6=contour(H,D,g6,cv,'k');
text(250,-1,'g6')
const61=contour(H,D,g6,cv5,'m');
text(200,45,'Feasible Region')
fv=[6.6, 100, 500, 1000];
fs=contour(H,D,f,fv,'k--');
clabel(fs)
hold off







