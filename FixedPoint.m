function xc=FixedPoint(f,x0,TOL)
x1=f(x0);
t=0;
while(abs(x1-x0)>TOL&&t<20)
    x0=x1;
    x1=f(x0);
    t=t+1;
end
if t==20  
    % t is used to stop the program when the iteration is not convergent
    %since fixed point method is usually very quick to find the solution
    %It is reasonable to stop the program when the iteration is over 20 times
    fprintf('The iteration process is very likely to be divergent.\n Please choose another function again.\n');
    xc=[];
else xc=x1;
end
end