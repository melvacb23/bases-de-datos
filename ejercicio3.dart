/*
Ejercicio 3: Calculadora de Tiempo de Viaje Urbano
Implemente una calculadora que estime tiempos de viaje considerando diferentes medios de transporte y
condiciones de tráfico. Solicite origen, destino (distancia en km), medio de transporte (a pie, bicicleta, carro,
transporte público) y hora del día (hora pico, normal). Calcule tiempo estimado y costo total.
----------------------------------------------------
Este programa estima el tiempo de viaje y costo según:
- Distancia en km
- Medio de transporte: a pie, bicicleta, carro, transporte público
- Hora del día: hora pico, normal
Suposiciones:
- Velocidades promedio:
  a pie: 3 km/h, bicicleta: 8 km/h, carro: 15 km/h, transporte público: 25 km/h
- En hora pico: velocidad se reduce en 30%
- Costos:
  a pie y bicicleta = 0
  carro = 2000 pesos por km
  transporte público = tarifa fija de 2600
*/

import 'dart:io';

void main() {
  // Solicitar distancia
  print("Ingrese la distancia en km:");
  double distancia = double.parse(stdin.readLineSync() ?? "0");

  // Solicitar medio de transporte
  print("Seleccione medio de transporte:");
  print("1. A pie");
  print("2. Bicicleta");
  print("3. Carro");
  print("4. Transporte público");
  int transporte = int.parse(stdin.readLineSync() ?? "0");

  // Solicitar hora del día
  print("Ingrese la condición de tráfico:");
  print("1. Normal");
  print("2. Hora pico");
  int hora = int.parse(stdin.readLineSync() ?? "0");

  double velocidad = 0;
  double costo = 0;

  // Definir velocidad y costo según transporte
  switch (transporte) {
    case 1:
      velocidad = 3;
      costo = 0;
      break;
    case 2:
      velocidad = 8;
      costo = 0;
      break;
    case 3:
      velocidad = 15;
      costo = distancia * 2000;
      break;
    case 4:
      velocidad = 25;
      costo = 2600;
      break;
    default:
      print("Opción no válida.");
      return;
  }

  // Ajuste por hora pico
  if (hora == 2) {
    velocidad *= 0.7;
  }

  // Calcular tiempo (horas)
  double tiempoHoras = distancia / velocidad;
  double tiempoMinutos = tiempoHoras * 60;

  // Mostrar resultados
  print("=================================");
  print("Distancia: $distancia km");
  print("Velocidad promedio: $velocidad km/h");
  print("Tiempo estimado: ${tiempoMinutos.toStringAsFixed(1)} minutos");
  print("Costo total: \$$costo");
}
