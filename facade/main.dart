import 'cine-facade.dart';
import 'proyector.dart';
import 'sistema-audio.dart';
import 'reproductor.dart';

void main(){
  final cine = CineFacade(
    Proyector(),
    SistemaAudio(),
    Reproductor()
  );

  // Iniciar la pelicula
  cine.verPelicula('It', 25);

  // Sin facade, se llaman a cada clase y metodos necesarios
  // para lograr reproducir la pelicula

  // Terminar la pelicula
  cine.terminarReproduccion();

  // La fachada coordina todas las clases y métodos involucrados en la reproducción de la película, 
  // simplificando el proceso para el usuario.
  // El usuario no necesita conocer a las clases involucradas
}