prob = optimproblem('Description' ,'Find The Max Power')
r1 = optimvar('r1', 1, 'LowerBound',0,'UpperBound',5)
r2 = optimvar('r2', 1, 'LowerBound',0,'UpperBound',5);
r3 = optimvar('r3', 1, 'LowerBound',0,'UpperBound',5);

v1 = optimvar('v1', 1, 'UpperBound',10,'LowerBound',-10);
v2 = optimvar('v2', 1, 'UpperBound',10,'LowerBound',-10);

i1 = optimvar('i1', 1);
i2 = optimvar('i2', 1);
i3 = optimvar('i3', 1);
i4 = optimvar('i4', 1);

prob.Constraints.MyConstraint1 = (9*i1) - (2*i4) - 4 - v1 == 0;
prob.Constraints.MyConstraint2 = (i2*3)+(i2*5)-(5*i3)+1 == 0;
prob.Constraints.MyConstraint3 = (i3*r1)+(i3*5)-(i4*r1)-(5*i2) == 0;
prob.Constraints.MyConstraint4 = (i4*r2)+(i4*r1)-(i2*r1) == 0;
prob.Constraints.MyConstraint5 = i1 + i2 + i3 + i4 ~=0;

prob.Objective = ((i1-i2).*(i1 - i2)).*2;

sol = solve(prob)

%Todo: Matlab uses linear optimization algorith default. So We need to converge GA in this script then the problem will be solved..

