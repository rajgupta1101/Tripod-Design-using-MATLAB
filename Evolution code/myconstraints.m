%%constraint function
function [c,c_eq]=myconstraints(x)
c=[ 2.546479e4*sqrt(x(2)^2+4800)/((x(1)^2)*x(2))-1.5e4 ; 2.0e4*sqrt(x(2)^2+4800)/x(2)-1.816774e6*(x(1)^4)/(x(2)^2+4800)];
c_eq=[];
end
