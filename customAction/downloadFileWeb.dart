// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:html' as html;
import 'package:http/http.dart' as http;

Future downloadFileWeb(String link) async {
  try {
    // Descargar el archivo PDF como bytes
    final response = await http.get(Uri.parse(link));
    final bytes = response.bodyBytes;

    // Crear un blob para descargar el archivo
    final blob = html.Blob([bytes]);
    final urlBlob = html.Url.createObjectUrlFromBlob(blob);

    // Crear un elemento <a> para forzar la descarga
    final anchor = html.AnchorElement(href: urlBlob)
      ..setAttribute("download", "archivo.pdf") // Nombre del archivo
      ..click(); // Simular el clic para iniciar la descarga

    // Liberar el objeto URL
    html.Url.revokeObjectUrl(urlBlob);
  } catch (e) {
    print('Error al descargar el archivo: $e');
  }
}
