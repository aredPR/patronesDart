import 'documento-excel.dart';
import 'documento-json.dart';
import 'documento-texto.dart';
import 'documento.dart';

class GeneradorReportes {
  void generarReporte(String formato, List<int> calificaciones) {
    if (calificaciones.isEmpty) {
      throw ArgumentError('El reporte necesita una lista de calificaciones no vacía.');
    }

    //Este objeto conoce todas las implementaciones concretas
    Documento documento;
    switch ( formato ) {
      case 'texto':
        documento = DocumentoTexto();
        break;
      case 'json':
        documento = DocumentoJson();
        break;
      case 'excel':
        documento = DocumentoExcel();
        break;
      default:
        throw ArgumentError('Formato invalido: $formato');
    }

    print(documento.generar(calificaciones));
    print('Reporte generado correctamente en formato $formato');
  }
}