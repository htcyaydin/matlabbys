  data = readtable("hurricanes.txt");
  data.Location = categorical(data.Location);
  onland = data.Location=="Land";
  figure;
  hold on

  scatter(data.Windspeed(~onland),data.Pressure(~onland),"ob","filled","MarkerFaceAlpha",0.5
  hold on
  scatter(data.Windspeed(onland),data.Pressure(onland),"or","filled","MarkerFaceAlpha",0.5)
  xlabel("Wind Speed (mph)")
  ylabel("Pressure (mbar)")
  hold off



%Hurricane Exercises Part 2

data = readtable("hurricanes.txt");
data.Location = categorical(data.Location);
onland = data.Location=="Land";
scatter(data.Windspeed(~onland),data.Pressure(~onland),"b","filled","MarkerFaceAlpha",0.5)
hold on
scatter(data.Windspeed(onland),data.Pressure(onland),"r","filled","MarkerFaceAlpha",0.5)
hold off
xlabel("Wind Speed (mph)")
ylabel("Pressure (mbar)")

xlim([15 60])
grid('minor')

%Hurricane Exercise part 3

dat = datastore('hurricaneData/Location/hurricaneData1990.txt')



