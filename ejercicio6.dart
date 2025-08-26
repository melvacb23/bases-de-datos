/*
Ejercicio 6: Sistema de Notificaciones Push
Diseñe un simulador de sistema de notificaciones para aplicaciones móviles. Cree una clase Notificacion con
propiedades: título, mensaje, tipo (info, advertencia, error), fecha/hora, leída/no leída. Implemente métodos para
crear, marcar como leída, filtrar por tipo y mostrar estadísticas de notificaciones.
------------------------------------------------------------------------------

*/

class Notificacion {
  // Atributos de la clase
  String titulo;
  String mensaje;
  String tipo;
  String fechaHora;
  bool leida;

  // Constructor para inicializar la notificación
  Notificacion(this.titulo, this.mensaje, this.tipo, this.fechaHora, this.leida);

  // Método que marca la notificación como leída
  void marcarComoLeida() {
    leida = true;
    print("Notificación '$titulo' marcada como leída.");
  }

  // Método que muestra toda la información de la notificación
  void mostrar() {
    print("[$tipo] $titulo - $mensaje ($fechaHora) - Leída: $leida");
  }
}

void main() {
  // Crear una notificación
  Notificacion n1 = Notificacion(
      "Bienvenida", "Gracias por instalar la app", "info", "2025-08-24 10:00", false);

  // Mostrar notificación
  n1.mostrar();

  // Marcarla como leída
  n1.marcarComoLeida();

  // Mostrar de nuevo para ver el cambio
  n1.mostrar();
}