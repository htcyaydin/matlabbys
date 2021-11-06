  data = readtable("hurricanes.txt");
  data.Location = categorical(data.Location);
  onland = data.Location=="Land";
  figure;
  hold on

  scatter(data.Windspeed(~onland),data.Pressure(~onland),"ob","filled","MarkerFaceAlpha",0.5
  hold on
  scatter(data.Windspeed(onland),data.Pressure(onland),"or","filled","MarkerFaceAlpha",0.5)
