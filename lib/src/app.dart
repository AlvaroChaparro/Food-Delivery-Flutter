import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_delivery/src/pages/signin_page.dart';
// import './screens/main_screen.dart';

// Widget desde el que lanzamos el primer componente de la aplicacion
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([ // Bloqueo de rotacion
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Food Delivery App",
      theme: ThemeData(primaryColor: Colors.blueAccent),
      // home: MainScreen(),
      home: SignInPage(),
    );
  }
}
