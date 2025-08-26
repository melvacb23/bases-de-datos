/*
Ejercicio 5: Calculadora de Descuentos por Volumen
Cree una aplicación para calcular descuentos escalonados en compras online. Defina rangos de descuento: $0-
$50 (0%), $51-$100 (5%), $101-$200 (10%), $201+ (15%). Solicite el monto de compra, calcule el descuento
aplicable, muestre el ahorro y el total final con IVA (19%).
----------------------------------------------------
Este programa calcula el descuento según el monto de compra.
Rangos de descuento:
- $0 - $50  => 0%
- $51 - $100 => 5%
- $101 - $200 => 10%
- $201+ => 15%
Se calcula ahorro, subtotal con descuento y total final con IVA (19%).
*/

import 'dart:io';

void main() {
  // Solicitar monto de compra
  print("Ingrese el monto de la compra:");
  double monto = double.parse(stdin.readLineSync() ?? "0");

  double descuento = 0;

  // Determinar porcentaje de descuento según monto
  if (monto <= 50) {
    descuento = 0;
  } else if (monto <= 100) {
    descuento = 0.05;
  } else if (monto <= 200) {
    descuento = 0.10;
  } else {
    descuento = 0.15;
  }

  // Calcular valores
  double ahorro = monto * descuento;
  double subtotal = monto - ahorro;
  double iva = subtotal * 0.19;
  double totalFinal = subtotal + iva;

  // Mostrar resultados
  print("=================================");
  print("Monto de compra: \$$monto");
  print("Descuento aplicado: ${descuento * 100}%");
  print("Ahorro: \$$ahorro");
  print("Subtotal con descuento: \$$subtotal");
  print("IVA (19%): \$$iva");
  print("Total a pagar: \$$totalFinal");
}