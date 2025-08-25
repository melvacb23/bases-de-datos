/*
Ejercicio 4: Generador de QR para WiFi
Desarrolle un generador de códigos QR para redes WiFi. Solicite el nombre de la red, contraseña, tipo de
seguridad (WPA, WEP, abierta) y genere un string con formato QR. Valide que la contraseña sea segura y
muestre instrucciones de uso para diferentes dispositivos móviles.
----------------------------------------
Este programa genera un string en formato QR para conexión WiFi.
Formato estándar
Validaciones: contraseña debe ser segura (mínimo 8 caracteres).
*/


import 'dart:io';

void main() {
  // Solicitar datos de la red
  print("Ingrese el nombre de la red WiFi (SSID):");
  String ssid = stdin.readLineSync() ?? "";

  print("Ingrese la contraseña:");
  String password = stdin.readLineSync() ?? "";

  print("Seleccione el tipo de seguridad (WPA, WEP, abierta):");
  String seguridad = stdin.readLineSync() ?? "abierta";

  // Validar seguridad
  if (seguridad.toLowerCase() != "abierta" && password.length < 8) {
    print("La contraseña debe tener al menos 8 caracteres.");
    return;
  }

  // Generar string QR
  String qr = "WIFI:T:$seguridad;S:$ssid;P:$password;;";

  // Mostrar resultados
  print("=================================");
  print("Código QR generado:");
  print(qr);

  // Instrucciones de uso
  print("Instrucciones:");
  print("- En Android: abre la cámara y escanea el código QR.");
  print("- En iOS: usa la cámara o Ajustes > WiFi > Escanear QR.");
  print("- En Android: abre la cámara y escanea el código QR.");
}