/*
Ejercicio 10: Sistema de Valoraciones y Reseñas
Desarrolle un sistema de reseñas tipo app store. Cree clase Reseña con usuario, calificación (1-5 estrellas),
comentario, fecha y utilidad. Implemente funciones para agregar reseñas, calcular promedio de calificaciones,
filtrar por estrellas, mostrar reseñas más útiles y generar estadísticas.
----------------------------------------------------
*/

class Resena {
  // Atributos
  String usuario;
  int calificacion;
  String comentario;
  String fecha;
  int utilidad;

  // Constructor
  Resena(this.usuario, this.calificacion, this.comentario, this.fecha, this.utilidad);

  // Método para mostrar reseña
  void mostrar() {
    print("$usuario (${calificacion} estrellas) [$fecha] - $comentario (Útil: $utilidad)");
  }
}

void main() {
  // Crear reseñas
  Resena r1 = Resena("Carlos", 5, "Excelente aplicación", "2025-08-24", 10);
  Resena r2 = Resena("Laura", 3, "Podría mejorar", "2025-08-23", 4);

  // Mostrar reseñas
  r1.mostrar();
  r2.mostrar();

  // Calcular promedio
  double promedio = (r1.calificacion + r2.calificacion) / 2;
  print("Promedio de calificaciones: $promedio estrellas");
}