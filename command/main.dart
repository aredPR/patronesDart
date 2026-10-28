import '../command/agenda.dart';

void main() {
  final agenda = Agenda();

  print('Tareas iniciales: $agenda.tareas');
  agenda.eliminar(2); // Eliminar la tarea en la posición 2
  print('Tareas después de eliminar: $agenda.tareas');
  // Deshacer la eliminación
  agenda.deshacer();
  print('Tareas después de deshacer: $agenda.tareas');
}