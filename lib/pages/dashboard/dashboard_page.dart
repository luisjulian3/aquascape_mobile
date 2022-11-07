import 'package:aquascape_mobile/pages/dashboard/dashboard_widgets/dashboard_light.dart';
import 'package:flutter/material.dart';

import '../../utils/utils.dart';
import 'dashboard_widgets/dashboard_feeder.dart';
import 'dashboard_widgets/dashboard_ph.dart';
import 'dashboard_widgets/dashboard_temperature.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: ('Dasboard'),
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(25),
        crossAxisCount: 2,
        children: <Widget>[
          Card(
            //Lampu
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DashboardLight(),
                    ));
              },
              splashColor: Colors.blue,
              child: Center(
                  child: Column(
                children: const <Widget>[
                  Icon(
                    Icons.lightbulb_outline,
                    size: 70,
                    color: Colors.yellowAccent,
                  ),
                  Text("Lampu", style: TextStyle(fontSize: 17.0)),
                ],
              )),
            ),
          ),
          Card(
            //Sensor PH
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DashboardSensorPH(),
                    ));
              },
              splashColor: Colors.blue,
              child: Center(
                  child: Column(
                children: const <Widget>[
                  Icon(
                    Icons.sensors,
                    size: 70,
                    color: Colors.redAccent,
                  ),
                  Text("Sensor PH", style: TextStyle(fontSize: 17.0)),
                ],
              )),
            ),
          ),
          Card(
            //Temperature
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DashboardTemperature(),
                    ));
              },
              splashColor: Colors.blue,
              child: Center(
                  child: Column(
                children: const <Widget>[
                  Icon(
                    Icons.thermostat,
                    size: 70,
                    color: Colors.greenAccent,
                  ),
                  Text("Temperature", style: TextStyle(fontSize: 17.0)),
                ],
              )),
            ),
          ),
          Card(
            //Fish Feeder
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DashboardFishFeeder(),
                    ));
              },
              splashColor: Colors.blue,
              child: Center(
                  child: Column(
                children: const <Widget>[
                  Icon(
                    Icons.restaurant,
                    size: 70,
                    color: Colors.blueAccent,
                  ),
                  Text("Fish Feeder", style: TextStyle(fontSize: 17.0)),
                ],
              )),
            ),
          ),
        ],
      ),
    );
  }
}


// #Chart

/*List<TemperatureData> _chartData;

  @override
  void initState() {
    _chartData = getChartData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: ('Temperature'),
      ),
      body: SfCartesianChart(
        series: <ChartSeries>[
          AreaSeries<TemperatureData, double>(
            dataSource: _chartData,
            xValueMapper: (TemperatureData waktu, _) => waktu.nilai,
            yValueMapper: (TemperatureData waktu, _) => waktu.waktu,
          )
        ],
      ),
    );
  }*/


/*List<TemperatureData> getChartData() {
  final List<TemperatureData> chartData = [
    TemperatureData(2012, 20),
    TemperatureData(2013, 19),
    TemperatureData(2014, 21),
    TemperatureData(2015, 22),
    TemperatureData(2016, 24),
  ];
  return chartData;
}

class TemperatureData {
  TemperatureData(this.waktu, this.nilai);
  final double waktu;
  final double nilai;
}

*/