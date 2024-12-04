import 'package:flutter/material.dart';
import 'package:evaluacion_parcial_01/pantalla1.dart';
import 'package:evaluacion_parcial_01/pantalla2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Evaluación Parcial 01',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const Pantalla0(), // Pantalla inicial
    );
  }
}

class Pantalla0 extends StatelessWidget {
  const Pantalla0({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Evaluación Parcial 01",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: const Color.fromARGB(255, 105, 206, 114),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Pantalla Principal",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            
          ],
        ),
      ),
    );
  }
}


//   ///////////////crearemos accesos para las demas pantallas/////////////////

Widget pagina_btn(){
  return ElevatedButton.icon(onPressed: ()=>(),
  label:Text("ir a pantalla 1"),icon: Icon(Icons.navigate_next_outlined),);
}
void navegar01(context){
  Navigator.push(context,
   MaterialPageRoute(builder: (context)=>Pantalla1()));
}

Widget pagina_btn2(){
  return ElevatedButton.icon(onPressed: ()=>(),
  label:Text("ir a pantalla 2"),icon: Icon(Icons.navigate_next_outlined),);
}
void navegar02(context){

  Navigator.push(context,
  MaterialPageRoute(builder: (context)=>Pantalla2()));  
   
}
//  Widget pagina_btn(){
//   return ElevatedButton.icon(onPressed:()=>(),
//   label:Text("ir a pantalla 2"),icon: Icon(Icons.navigate_next_outlined),);
//  }

// void navegar02(context){

//   Navigator.push(context,
//    MaterialPageRoute(builder: (context)=>Pantalla2()));
// }
