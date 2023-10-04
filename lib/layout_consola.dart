import 'dart:ffi';

import 'package:flutter/material.dart';

class LayoutConsola extends StatelessWidget{
  final dynamic itemData;

  final Map<String, Color> colorMap = {
            'black': Colors.black,
            'purple': Colors.purple,
            'white': Colors.white,
      };

  LayoutConsola({Key? key, required this.itemData}) : super(key: key);
  
  Color getColorFromString(String colorString) {
              return colorMap[colorString.toLowerCase()] ?? Colors.black;
        }

  @override
      Widget build(BuildContext context) {
        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Ocupar la meitat superior de l'espai amb la imatge
              SizedBox(
                width: MediaQuery.of(context).size.width * 100.0,
                height: MediaQuery.of(context).size.height * 0.5,
                child: Image.asset('assets/images/${itemData["imatge"]}', fit: BoxFit.contain, ),
              ),
              // Ocupar la meitat inferior de l'espai amb els textos
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("${itemData['nom']}",style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                    const SizedBox(height: 10),
                    Container(width: 10, height: 10, color: getColorFromString(itemData['color']),),
                    Text("${itemData['data']}",style: const TextStyle(fontSize: 15, color: Colors.grey )),
                    const SizedBox(height: 10),
                    Text(itemData['procesador'],style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                    Text(itemData["venudes"].toString()+" venudes")
                  ],
                ),
              ),
            ],
          ),
        );
      }


}
