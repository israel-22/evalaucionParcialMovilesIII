import 'package:flutter/material.dart';
import 'package:evaluacion_parcial_01/main.dart';
import 'package:evaluacion_parcial_01/pantalla1.dart';

class Pantalla2 extends StatelessWidget {
  const Pantalla2({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController masaController = TextEditingController();
    double gravedad = 9.8; // Aceleración gravitacional constante
    double superficie = 0.3; // Superficie de la balanza en m²
    double presion = 0.0; // Variable para almacenar la presión calculada

    // Función para calcular la presión
    void calcularPresion() {
      final double? masa = double.tryParse(masaController.text); // Convertir entrada a double
      if (masa != null) {
        double fuerza = masa * gravedad; // F = m * g
        presion = fuerza / superficie;  // P = F / A
        showDialog(
          context: context,
          builder: (_) => AlertDialog(
            title: Text("Resultado"),
            content: Text("La presión ejercida es: ${presion.toStringAsFixed(2)} Pascales"),
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
          SnackBar(content: Text("Por favor, introduce un valor válido para la masa.")),
        );
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Pantalla 2",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 68, 100, 202),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Calculadora de Presión",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            TextField(
              controller: masaController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Ingresa la masa (en kg)",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: calcularPresion,
              child: Text("Calcular Presión"),
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
                    MaterialPageRoute(builder: (context) => Pantalla1()),
                  ),
                  icon: Icon(Icons.navigate_next),
                  label: Text("Pantalla 1"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
