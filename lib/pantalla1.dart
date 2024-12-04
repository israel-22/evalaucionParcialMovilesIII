import 'package:flutter/material.dart';
import 'package:evaluacion_parcial_01/main.dart';
import 'package:evaluacion_parcial_01/pantalla2.dart';

class Pantalla1 extends StatelessWidget {
  const Pantalla1({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController presionController = TextEditingController();
    double fuerza = 0.0; // Variable local para el resultado

    // Función para calcular la fuerza
    void calcularFuerza() {
      final double? presion = double.tryParse(presionController.text); // Convertir a double
      if (presion != null) {
        fuerza = presion * 0.25; // F = P * A (A = 0.25)
        showDialog(
          context: context,
          builder: (_) => AlertDialog(
            title: Text("Resultado"),
            content: Text("La fuerza ejercida es: $fuerza N"),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text("Cerrar"),
              ),
            ],
          ),
        );
      } else {
        // Mostrar error si la entrada no es válida
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Por favor, introduce un valor válido para la presión.")),
        );
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Pantalla 1",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: const Color.fromARGB(255, 212, 25, 25),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Calculadora de Fuerza",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            TextField(
              controller: presionController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Ingresa la presión (P en Pascales)",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: calcularFuerza,
              child: Text("Calcular Fuerza"),
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Pantalla0()),
                  ),
                  icon: Icon(Icons.navigate_before),
                  label: Text("Pantalla 0"),
                ),
                ElevatedButton.icon(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Pantalla2()),
                  ),
                  icon: Icon(Icons.navigate_next),
                  label: Text("Pantalla 2"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
