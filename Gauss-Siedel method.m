%Gauss-Seidel method
%B180123EE

 n=input('Enter number of equations, n: ');
 A = zeros(n,n+1);
 x1 = zeros(n);
 tol = input('Enter the tolerance, tol: ');
 m = input('Enter maximum no of iterations, m: ');

 A=[20 1 -2 17; 3 20 -1 -18; 2 -3 20 25]; %Coefficient of the equations
 x1=[0 0 0];

 k = 1;
 while  k <= m
    err=0;
     for i=1 : n
       z=0;
       for j = 1 : n
          z = z-A(i,j)*x1(j);
       end
       z = (z+A(i,n+1))/A(i,i);
       if abs(z) > err
           err  = abs(z);
       end
       x1(i) = x1(i) + z;
     end

    if err <= tol
      break;
    else
      k = k+1;
    end
 end
   fprintf('Solution vector after %d iterations is :\n', k-1);
   fprintf(' x=%.4f \n y=%.4f \n z=%.4f \n', x1(1),x1(2),x1(3));
 