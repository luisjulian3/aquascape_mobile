import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text(
            "Profile Page",
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}

/*
//Profil
class DashboardProfil extends StatefulWidget {
  const DashboardProfil({super.key});

  @override
  State<DashboardProfil> createState() => _DashboardProfil();
}

class _DashboardProfil extends State<DashboardProfil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: CustomAppBar(
        title: ('Profil'),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 60.0,
              backgroundImage: AssetImage('lib/images/logo.png'),
            ),
            Positioned(
              bottom: 20.0,
              right: 20.0,
              child: InkWell(
                onTap: () {},
                child: Icon(
                  Icons.camera_alt,
                  color: Colors.white,
                  size: 28.0,
                ),
              ),
            ),
            Text(
              'test123',
              style: TextStyle(
                  fontFamily: 'Schyler',
                  fontSize: 30.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),

            //Username
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.person,
                  color: Colors.black,
                ),
                title: Text('test123'),
              ),
            ),
            //Email
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.black,
                ),
                title: Text('test123@gmail.com'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
*/
