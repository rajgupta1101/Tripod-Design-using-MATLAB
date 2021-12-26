%%plot the objective function
H=1.0:1.0:500;
D=0.1:0.1:50.0;
f=@(H,D) 6.59734e-3*(D.^2).*(sqrt(H.^2+4800));
[H1o,D1o]=meshgrid(H,D);
mesh(H1o,D1o,f(H1o,D1o));
hold on;
xlabel('Height');
ylabel('Diameter');
zlabel('f(H1o,D1o)');
contour(H1o,D1o,f(H1o,D1o),500);