prob = optimproblem("Description", "Factory Location")
show(prob)

prob = optimproblem("Description","Factory Location");

x = optimvar("x");

y = optimvar("y");

X = [5 40 70];

Y = [20 50 15];

d = ((x-X).^2 + (y-Y).^2).^0.5

dTotal = sum(d)

prob.Objective = dTotal

show(prob)

---

---

load Nutrition.mat

food

prob = optimproblem("Description","An Optimal Breakfast");

servings = optimvar("servings",16,"Lowerbound",0);

C = food.Price .* servings

prob.Objective = sum(C)

[sol, optval]=solve(prob)
