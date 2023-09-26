import 'package:flutter/material.dart';
import 'layout_mobile_screen_0.dart';

class App extends StatefulWidget{
  const App({Key? key}) : super(key: key);
  // L'estat es defineix a la classe 'AppState'
  @override
  AppState createState() => AppState();
}

// Definir l'estat del widget 'App'
class AppState extends State<App> {
  // Definir el contingut del widget 'App'
  @override
  Widget build(BuildContext context) {
    // Farem servir la base 'Material'
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aplicació Flutter',
      theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
              useMaterial3: true,
              ),
              // De moment només es veu un text 'Hola App'
      home: _setLayout(context),
    );
}

Widget _setLayout(BuildContext context) {
    // Aquí, més endavant escollirem mòbil o desktop
    return const LayoutMobileScreen0();
}


}