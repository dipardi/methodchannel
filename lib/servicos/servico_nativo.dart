import 'package:flutter/services.dart';

class ServicoNativo {
  static const _platform = MethodChannel('com.meuapp.nativo/dialogos');
  Future<void> mostrarToast(String mensagem) async {
    try {
      await _platform.invokeMethod('mostrarToast', {'mensagem': mensagem});
    } on PlatformException catch (e) {
      print("Falha ao mostrar o Toast: '${e.message}'.");
    }
  }

  Future<void> mostrarDialogo(String titulo, String mensagem) async {
    try {
      await _platform.invokeMethod('mostrarDialogo', {
        'titulo': titulo,
        'mensagem': mensagem,
      });
    } on PlatformException catch (e) {
      print("Falha ao mostrar o Dialogo: '${e.message}'.");
    }
  }
}
