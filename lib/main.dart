import 'package:aquascape_mobile/controllers/auth_controller.dart';
import 'package:aquascape_mobile/controllers/controllerBindings.dart';
import 'package:aquascape_mobile/pages/dashboard/dashboard_page.dart';
import 'package:aquascape_mobile/pages/navigationbar/navigation_bar_binding.dart';
import 'package:aquascape_mobile/pages/navigationbar/navigation_bar_controller.dart';
import 'package:aquascape_mobile/pages/home/home_controller.dart';
import 'package:aquascape_mobile/pages/home/home_page.dart';
import 'package:aquascape_mobile/pages/login/login_page.dart';
import 'package:aquascape_mobile/pages/navigationbar/navigation_bar_page.dart';
import 'package:aquascape_mobile/pages/profile/profile_controller.dart';
import 'package:aquascape_mobile/pages/profile/profile_page.dart';
import 'package:aquascape_mobile/pages/root.dart';
import 'package:aquascape_mobile/pages/sign_up/sign_up.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  // Firebase init
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AuthController authController = Get.put(AuthController());
    authController.decideRoute();

    return GetMaterialApp(
      // bind our app with the  Getx Controller
      initialBinding: ControllerBindings(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.amaranthTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      initialRoute: "/root",
      getPages: [
        GetPage(
          name: "/root",
          page: () => Root(),
        ),
        GetPage(
            name: "/navigationbarbot",
            page: () => NavigationBarBot(),
            binding: NavigationBarBinding()),
        GetPage(
          name: "/navigationbarbot/homepage",
          page: () => HomePage(),
        ),
        GetPage(
          name: "/navigationbarbot/dashboardpage",
          page: () => DashboardPage(),
        ),
        GetPage(
          name: "/navigationbarbot/profilepage",
          page: () => ProfilePage(),
        ),
      ],

      //home: Root(),
    );
  }
}
