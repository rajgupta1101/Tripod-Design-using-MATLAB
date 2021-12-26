%%main code for minimizing the fitness function using GA(genetic algorithm)
ObjFcn=@myfitness;
nvars=2;
LB=[1 50];
UB=[10 500];
ConsFcn=@myconstraints;

[x,fval]=ga(ObjFcn,nvars,[],[],[],[],LB,UB,ConsFcn);


%%Run the program