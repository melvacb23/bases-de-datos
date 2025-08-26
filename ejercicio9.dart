/*
Ejercicio 9: Gestor de Archivos Móvil
Cree un simulador de gestor de archivos para dispositivos móviles. Defina clase Archivo con nombre, tamaño,
tipo, fecha creación y ruta. Implemente operaciones: listar archivos, buscar por nombre/tipo, calcular espacio
usado, organizar por fecha/tamaño y simular transferencias entre carpetas.
--------------------------------------
*/

class Archivo {
  // Atributos
  String nombre;
  double tamano;
  String tipo;
  String fechaCreacion;
  String ruta;

  // Constructor
  Archivo(this.nombre, this.tamano, this.tipo, this.fechaCreacion, this.ruta);

  // Método para mostrar información del archivo
  void mostrar() {
    print("Archivo: $nombre.$tipo - ${tamano}KB - Creado: $fechaCreacion - Ruta: $ruta");
  }
}

void main() {
  // Crear archivos
  Archivo a1 = Archivo("documento", 120.5, "pdf", "2025-08-24", "/documentos");
  Archivo a2 = Archivo("foto", 300.0, "jpg", "2025-08-20", "/imagenes");

  // Mostrar archivos
  a1.mostrar();
  a2.mostrar();

  // Calcular espacio usado
  double espacioTotal = a1.tamano + a2.tamano;
  print("Espacio usado: $espacioTotal KB");
}