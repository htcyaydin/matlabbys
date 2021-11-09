# The Optimal Breakfast - Including Linear Equality Constraints

Instructions are in the task pane to the left. Complete and submit each task one at a time.

Do not edit.  This code replicates what you have done thus far.

load Nutrition.mat

food

prob = optimproblem("Description","An Optimal Breakfast");

servings = optimvar("servings",16,"LowerBound",0);

C = food.Price .* servings;

prob.Objective = sum(C);

## Task 1

%Calories are an important aspect of your daily diet. The average person is recommended to eat around 350 calories for breakfast each day.

cals = food.Calories .* servings

## Task 2

%Create an optimization expression for the total number of calories consumed by summing the elements of cals. Name this expression totalCals

totalCals = sum(cals)

## Task 3

%An equality constraint is stored in the Constraints field of the optimization problem. Since you can apply multiple constraints to any given problem, each constraint is given a unique name.

% To store an equality constraint in your optimization problem, you must set an optimization expression equal to your desired numerical value as in

prob.Constraints.calories = totalCals == 350

## Task 4

%Solve the optimization problem. Store the first and second outputs in variables sol and optval, respectively. Remember, you do not need to provide an initial guess because the objective function is linear.

[sol, optval] = solve(prob)

## Task 5

%You can access the optimal set of optimization variables using dot notation:

optServings = sol.servings

## Task 6

%To visualize the results, you can create a bar graph using the bar function.

bar(food.Name,optServings)

## Task 7

%This seems strange... MATLAB is telling you that you should eat 4.5 cookies for breakfast and nothing else. When you are faced with a solution that seems odd to you, one thing you can do is check to make sure that your constraint has been met.

%You can use the evaluate function to evaluate the optimization expression that was included in your constraint at the solution.

check = evaluate(totalCals,sol)

## Task 8

caloriesPerDollar = food.Calories ./ food.Price

bar(food.Name,caloriesPerDollar)

%Great! You have now confirmed that 4.5 cookies will provide you with exactly 350 calories. So that must be the cheapest 350-calorie breakfast. Let's look at the calories-per-dollar of each food to confirm our suspicion.

## Further Practice

The algorithm recognized the chocolate chip cookies as the "biggest bang for your buck", since each serving is inexpensive and contributes a great deal of calories. In other words, it has the highest calorie-to-cost ratio. So although the solution seemed odd from a practical standpoint, the algorithm gave you the optimal solution you asked for.

While this is a more realistic diet compared to no food at all, eating only chocolate chip cookies for breakfast might not be the healthiest choice.

In the next section, we will impose additional nutritional constraints that will make your breakfast choices more realistic.

---

---

---

---

---

---

---

---

---

---

# The Optimal Breakfast - Including Linear Inequality Constraints

Instructions are in the task pane to the left. Complete and submit each task one at a time.

Do not edit. This code implements what you have done thus far.

load Nutrition.mat

food

prob = optimproblem("Description","An Optimal Breakfast");

servings = optimvar("servings",16,"LowerBound",0);

C = food.Price .* servings;

prob.Objective = sum(C);

cals = food.Calories .* servings;

prob.Constraints.calories = sum(cals) == 350;

show(prob)

## Task 1

%Solving your optimization problem in it's current state gives you a breakfast that includes exactly 350 calories. You may also be interested in consuming at least 45 grams of carbohydrates.

%Inequality constraints can be implemented in the same way as equality constraints, with the == (equality) replaced by <= (less than or equal to) or >= (greater than or equal to).

%prob.Constraints.name = expression <= value

%or

%prob.Constraints.name = expression >= value

carbs = food.Carbs .* servings;

totalCarbs = sum(carbs);

prob.Constraints.carbs = totalCarbs >= 45

## Task 2

%Solve the optimization problem. Store the output in a single variable sol.

sol = solve(prob)

## Task 3

%Create a bar graph with the Name column plotted on the horizontal axis and the servings field of sol on the vertical axis.

bar(food.Name,sol.servings)

## Task 4

%Evaluate the expression totalCarbs at the solution. Store the result in a variable named optCarbs

optCarbs = evaluate(totalCarbs,sol)

## Task 5

%Follow the steps from Tasks 1-4 to implement the constraint that you must intake at least 15 grams of protein, re-solve the optimization problem, and plot the result.

%Compute the total protein consumed over breakfast and store it in an expression named totalProtein.

%Store the constraint in your optimization problem, and name the constraint protein.

%Solve the optimization problem and store the output in sol2.

%Create a bar graph with the food names on the horizontal axis and the optimal servings on the vertical axis.

%Evaluate the protein constraint at sol2 and store in a variable optProtein.

protein = food.Protein .* servings;

totalProtein = sum(protein);

prob.Constraints.protein = totalProtein >= 15;

sol2 = solve(prob)

bar(food.Name,sol2.servings)

optProtein =evaluate(totalProtein,sol2)

## Task 6

%Repeat the process from Task 5 to implement one final constraint that you must intake at least 60 milligrams of vitamin C.

%Compute the total vitamin C consumed over breakfast and store it in an expression named totalVitaminC.

%Store the constraint in your optimization problem, and name the constraint vitaminC.

%Solve the optimization problem and store the output in sol3.

%Create a bar graph with the food names on the horizontal axis and the optimal servings on the vertical axis.

%Evaluate the vitamin C constraint at sol3 and store in a variable optVitaminC.

vitaminC = food.VitaminC .* servings;

totalVitaminC = sum(vitaminC);

prob.Constraints.vitaminC = totalVitaminC >= 60;

sol3 = solve(prob)

bar(food.Name,sol3.servings)

optVitaminC = evaluate(totalVitaminC, sol3)

## Task 7

%In some situations, an optimal solution may not exist because one or more constraints cannot be met. In which case, MATLAB will notify you that it was unable to find a solution within the constraints you have defined.

%Change the three constraints you previously defined in this example to see what happens when a solution cannot be found.

%Set totalCarbs to be less than or equal to 30g and store it in the carbs constraint.

%Set totalProtein to be greater than or equal to 60g and store it in the protein constraint.

%Set totalVitaminC to be greater than or equal to 60mg and store it in the vitaminC constraint.

%Solve the new optimization problem. Store the first and second outputs in the variables sol4 and optval, respectively. Leave off the semicolon to display the result.

prob.Constraints.carbs = totalCarbs <= 30

prob.Constraints.protein = totalProtein >= 60

prob.Constraints.vitaminC = totalVitaminC >= 60

[sol4,optval] = solve(prob)

## Further Practice

%The code in the Further Practice section allows you to interactively change the constraints in this example. Uncomment the code in the section by highlighting the code and clicking Remove comment toolstrip symbol in the Code section of the toolbar.

%Experiment with different constraint values using the sliders. For example, what is the optimal breakfast for a low carb, high protein diet?

% prob.Constraints.carbs = totalCarbs <= 0;

% prob.Constraints.protein = totalProtein >= 14;

% prob.Constraints.vitaminC = totalVitaminC >= 43;

% [sol,optval] = solve(prob);

% bar(food.Name,sol.servings)
