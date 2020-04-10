import 'package:eyentra/screens/Enter_a_city.dart';
import 'package:eyentra/screens/ListOfMedicines.dart';
import 'package:eyentra/screens/Pharmacy.dart';
import 'package:eyentra/screens/User_Pharmacy.dart';
import 'package:eyentra/screens/places_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      routes: {
        '/': (context) => (UserPharmacy()),
        '/city': (context) => Enter_city(),
        '/pharmacies': (context) => PlacesScreen(),
        '/pharmacy': (context) => Pharmacy(),
        '/medicines': (context) => UserRoute(),
      },
    );
  }
}
