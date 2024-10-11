import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'getStarted.dart';
import 'RoleSeclection.dart';
import 'driver.dart';
import 'user.dart';
import 'HomeScreen.dart';
import 'dashBoard.dart';
import 'bookingScreen.dart';
import 'Searching.dart';
import 'NONetwork.dart';
import 'profile.dart';

void main() async {
   
  runApp(MyApp());
  await Firebase.initializeApp();
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/get-started',
      routes: {
        '/get-started': (context) => GetStartedScreen(),
        '/role-selection': (context) => RoleSelectionScreen(),
        '/home': (context) => HomeScreen(),
        '/dashboard': (context) => DashboardScreen(),
        '/booking': (context) => BookingScreen(),
        '/driver-signup': (context) => DriverSignUpScreen(),
        '/driver-login': (context) => DriverLoginScreen(),
        '/user-signup': (context) => SignUpScreen(),
        '/user-login': (context) => LoginScreen(),
        '/Searching': (context) => SearchingPage(),
        '/NONetwork': (context) => NoNetworkScreen(),
        '/profile': (context) => ProfileScreen(),
      },
    );
  }
}
