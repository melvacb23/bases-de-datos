/*
Ejercicio 8: Reproductor de Lista Musical
Implemente un reproductor musical básico con clase Cancion (título, artista, duración, género, calificación) y clase
Playlist. Funcionalidades: crear playlist, agregar/quitar canciones, reproducir aleatoria, calcular duración total,
filtrar por género y mostrar estadísticas de reproducción.
------------------------------------------
*/

import 'dart:math'; 

// Clase Cancion con atributos básicos
class Cancion {
  String titulo;
  String artista;
  double duracion;
  String genero;
  int calificacion;

  // Constructor
  Cancion(this.titulo, this.artista, this.duracion, this.genero, this.calificacion);

  // Método para mostrar información de la canción
  void mostrar() {
    print("$titulo - $artista [$genero] (${duracion}min) $calificacion, /estrellas");
  }
}

// Clase Playlist con lista de canciones
class Playlist {
  String nombre;
  List<Cancion> canciones = []; // lista vacía de canciones

  Playlist(this.nombre);

  // Agregar canción a la playlist
  void agregarCancion(Cancion c) {
    canciones.add(c);
    print("Canción '${c.titulo}' agregada a $nombre");
  }

  // Mostrar todas las canciones de la playlist
  void mostrarCanciones() {
    print("Playlist: $nombre");
    for (var c in canciones) {
      c.mostrar();
    }
  }

  // Calcular la duración total de la playlist
  double duracionTotal() {
    double total = 0;
    for (var c in canciones) {
      total += c.duracion;
    }
    return total;
  }

  // Reproducir una canción aleatoria
  void reproducirAleatoria() {
    if (canciones.isNotEmpty) {
      var rnd = Random(); // objeto Random
      var seleccion = canciones[rnd.nextInt(canciones.length)];
      print("🎵 Reproduciendo ahora: ${seleccion.titulo} de ${seleccion.artista}");
    }
  }
}

void main() {
  // Crear playlist
  Playlist p = Playlist("Favoritas");

  // Agregar canciones
  p.agregarCancion(Cancion("Canción A", "Artista 1", 3.5, "Pop", 5));
  p.agregarCancion(Cancion("Canción B", "Artista 2", 4.0, "Rock", 4));

  // Mostrar canciones
  p.mostrarCanciones();

  // Mostrar duración total
  print("Duración total: ${p.duracionTotal()} min");

  // Reproducir canción aleatoria
  p.reproducirAleatoria();
}