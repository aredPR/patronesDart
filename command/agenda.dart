class Agenda {
  final tareas = [
    'Estudiar Dart',
    'Programar mis HUs',
    'Hacer la comida',
    'Hacer pull request de la tarea de patrones',
    'Presentar examén TOEFL'
  ];

  // Estado de una tarea
  String? eliminada; // Guardamos la tarea eliminada
  int? posicionAnterior; // Guardamos la posición de la tarea eliminada en la lista

  // Borrar una tarea
  void eliminar(int posicion) {
    eliminada = tareas.removeAt(posicion);
    posicionAnterior = posicion;
  }

  // Ya no se quiere borrar la tarea, se debe recuperar la tarea eliminada
  void deshacer() {
    final tarea = eliminada!;
    final posicion = posicionAnterior!;

    if (tarea.isNotEmpty && posicion >= 0 && posicion <= tareas.length) {
      tareas.insert(posicion, tarea);
      eliminada = null;
      posicionAnterior = null;
    } 

  }

}