import 'package:flutter/material.dart';

import '../../../utils/utils.dart';

import 'package:percent_indicator/circular_percent_indicator.dart';

class DashboardTemperature extends StatefulWidget {
  const DashboardTemperature({Key? key}) : super(key: key);

  @override
  State<DashboardTemperature> createState() => _DashboardTemperatureState();
}

class _DashboardTemperatureState extends State<DashboardTemperature> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: ('Temperature'),
      ),
      body: Center(
        child: CircularPercentIndicator(
          animation: true,
          animationDuration: 500,
          radius: 100,
          lineWidth: 10,
          percent: 0.5,
          progressColor: Colors.red,
          circularStrokeCap: CircularStrokeCap.round,
          center: Text(
            '50',
            style: TextStyle(fontSize: 50),
          ),
        ),
      ),
    );
  }
}
