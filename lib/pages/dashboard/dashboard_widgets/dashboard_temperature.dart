//Temperature
import 'package:aquascape_mobile/pages/dashboard/dashboard_widgets/chart_model_api.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:http/http.dart' as http;
import '../../../utils/utils.dart';

class DashboardTemperature extends StatefulWidget {
  const DashboardTemperature({Key? key}) : super(key: key);

  @override
  State<DashboardTemperature> createState() => _DashboardTemperatureState();
}

class _DashboardTemperatureState extends State<DashboardTemperature> {
  List<Temperature> temperatures = [];
  bool loading = true;
//Api masih belum kelar
  Future apicall() async {
    http.Response response;
    response = await http.get(
        Uri.parse('https://aquascape-project-tdfkwdj56a-et.a.run.app/PHScale'));
    Temperature tempdata = temperatureFromJson(response.body);
    setState(() {
      temperatures = tempdata as List<Temperature>;
      loading = false;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: ('Temperature'),
      ),
      body: Center(
        child: Container(
          child: SfCartesianChart(series: <ChartSeries>[
            // Renders line chart
            LineSeries<ChartData, int>(
                dataSource: chartData,
                xValueMapper: (ChartData data, _) => data.time,
                yValueMapper: (ChartData data, _) => data.value)
          ]),
        ),
      ),
    );
  }
}

//Banyaknya data cuman 5
final List<ChartData> chartData = [
  // ChartData(2010, 35),
  //ChartData(2011, 7),
  //ChartData(2012, 15),
  //ChartData(2013, 20),
  //ChartData(2014, 25)
];

class ChartData {
  ChartData(this.x, this.y);
  final int x;
  final double y;

  get time => null;

  get value => null;
}
