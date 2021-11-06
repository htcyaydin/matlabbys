%The file "fuelEconomy.txt" contains fuel economy data for different models of cars (you can use the command edit fuelEconomy.txt to examine its contents).
  %The goal of this exercise is to divide the combined miles per gallon data into three classes and create a scatter plot of city and highway miles per gallon like the one shown below.
  
  
  
data = readtable("fuelEconomy.txt");
nanIdx = ismissing(data.CombinedMPG);
data(nanIdx,:) = [];
MPGClass = discretize(data.CombinedMPG,[0 20 30 70],["Low" "Medium" "High"]);
MPGClass = categorical(MPGClass);
scatter(data.CityMPG(MPGClass == "Low"),data.HighwayMPG(MPGClass == "Low"),"r","filled")
hold on
scatter(data.CityMPG(MPGClass == "Medium"),data.HighwayMPG(MPGClass == "Medium"),"b","filled")
hold on
scatter(data.CityMPG(MPGClass == "High"),data.HighwayMPG(MPGClass == "High"),"k","filled")
hold off
grid on
xlabel("City MPG")
ylabel("Highway MPG")
legend("Low Combined MPG","Medium Combined MPG","High Combined MPG");
