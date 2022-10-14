import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../../utils/utils.dart';

class DashboardSensorPH extends StatefulWidget {
  const DashboardSensorPH({super.key});

  @override
  State<DashboardSensorPH> createState() => _DashboardSensorPH();
}

class _DashboardSensorPH extends State<DashboardSensorPH> {
  String? stringResponse;
  var mapResponse;
  var dataResponse;

  Future apicall() async {
    http.Response response;
    response = await http.get(Uri.parse(
        'https://project-aquascape-default-rtdb.asia-southeast1.firebasedatabase.app/ESP8266_Aqua/PHScale.json'));
    if (response.statusCode == 200) {
      setState(() {
        //  stringResponse = response.body;
        mapResponse = json.decode(response.body);
        dataResponse = mapResponse['Value'];
      });
    }
  }

  @override
  void initState() {
    apicall();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new SingleChildScrollView(
      child: Column(),
    );
  }
}

class SensorPh {
  String Time;
  String Value;

  SensorPh(this.Time, this.Value);
}
