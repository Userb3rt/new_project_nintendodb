import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'layout_personatge.dart';
import 'app_data.dart';

List<String> dropDownList = <String>['Personatges', 'Jocs', 'Consoles'];


class LayoutDesktop extends StatefulWidget {

      const LayoutDesktop({super.key});

      @override
      State<LayoutDesktop> createState() => _StateLayoutDesktop();
}

class _StateLayoutDesktop extends State<LayoutDesktop> {

      String seccio = dropDownList.first; // El valor del desplegable
      int item = -1; // Element seleccionat, -1 si no n'hi ha cap
      _StateLayoutDesktop();


      @override
      Widget build(BuildContext context) {
            return Scaffold(
                  appBar: AppBar(
                        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
                        title: const Text('Nintendo DB'),
                  ),
                  body: const Text('Desktop'));
      }

      
}
