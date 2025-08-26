/*
Ejercicio 7: Gestor de Ubicaciones Favoritas
Desarrolle un sistema para gestionar ubicaciones favoritas tipo GPS. Cree una clase Ubicacion con nombre,
latitud, longitud, categoría (casa, trabajo, restaurante, hospital) y notas. Permita agregar, eliminar, buscar por
categoría y calcular distancia aproximada entre dos ubicaciones.
---------------------------------------------
*/

class Ubicacion {
  // Atributos de la clase
  String nombre;
  double latitud;
  double longitud;
  String categoria;
  String notas;

  // Constructor
  Ubicacion(this.nombre, this.latitud, this.longitud, this.categoria, this.notas);

  // Método para mostrar información de la ubicación
  void mostrar() {
    print("Ubicación: $nombre ($categoria) [$latitud, $longitud] - $notas");
  }

  // Método para calcular distancia aproximada entre dos ubicaciones
  double distancia(Ubicacion otra) {
    return ((latitud - otra.latitud).abs() + (longitud - otra.longitud).abs());
  }
}

void main() {
  // Crear dos ubicaciones
  Ubicacion casa = Ubicacion("Mi casa", 1.23, 4.56, "casa", "Aquí vivo");
  Ubicacion trabajo = Ubicacion("Oficina", 2.00, 5.00, "trabajo", "Lugar de trabajo");

  // Mostrar cada ubicación
  casa.mostrar();
  trabajo.mostrar();

  // Calcular distancia aproximada
  print("Distancia aproximada entre casa y trabajo: ${casa.distancia(trabajo)}");
}