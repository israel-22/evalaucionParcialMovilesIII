
import 'package:flutter/material.dart';
import 'package:evaluacion_parcial_01/main.dart';
import 'package:evaluacion_parcial_01/pantalla1.dart'; 
import 'package:evaluacion_parcial_01/pantalla2.dart';

 
class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            title: Text("Pantalla0"),
            onTap: () => Navigator.push(context,MaterialPageRoute(builder:(context)=> Pantalla0())),
          ),
          ListTile(
            title: Text("Pantalla1"),
            onTap: () => Navigator.push(context,MaterialPageRoute(builder:(context)=> Pantalla1(),)),
          ),
          ListTile(
            title: Text("Pantalla2"),
            onTap: () => Navigator.push(context,MaterialPageRoute(builder:(context)=> Pantalla2(),)),
          ),

        ],
      ),
    );
  
  }
}