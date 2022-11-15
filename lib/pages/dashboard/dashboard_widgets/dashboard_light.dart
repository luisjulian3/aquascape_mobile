import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../../utils/utils.dart';

class DashboardLight extends StatefulWidget {
  const DashboardLight({super.key});

  @override
  State<DashboardLight> createState() => _DashboardLightState();
}

class _DashboardLightState extends State<DashboardLight> {
  String? stringResponse;
  var mapResponse;
  var dataResponse;
  bool _switch = false;

  Future apicall() async {
    http.Response response;
    response = await http.put(Uri.parse(
        'https://aquascape-project-tdfkwdj56a-et.a.run.app/Lamp/UpdateLampFalse'));
    if (response.statusCode == 200) {
      setState(() {
        mapResponse = json.decode(response.body);
        dataResponse = mapResponse['status'];
        //  stringResponse = response.body;
        _switch = ['status'] as bool;
      });
      setState(() {
        _switch = ['status'] as bool;
      });
    }
  }

  @override
  void initState() {
    apicall();
    super.initState();
  }

  ThemeData _dark =
      ThemeData(brightness: Brightness.dark, primaryColor: Colors.white);
  ThemeData _light =
      ThemeData(brightness: Brightness.light, primaryColor: Colors.black);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: _switch ? _dark : _light,
      home: Scaffold(
        appBar: CustomAppBar(
          title: ('Dasboard'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.lightbulb_circle_outlined,
                size: 100,
                color: Colors.yellowAccent,
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 20,
              ),
              Switch(
                  value: _switch,
                  onChanged: (_newvalue) {
                    setState(() {
                      {
                        _switch = _newvalue;
                      }
                    });
                  })
            ],
          ),
        ),
      ),
    );
  }
}

class Lamp {
  final String on;
  final String off;

  Lamp({required this.on, required this.off});

  factory Lamp.fromJson(Map<String, dynamic> json) {
    return Lamp(
      on: json['true'],
      off: json['false'],
    );
  }
}
