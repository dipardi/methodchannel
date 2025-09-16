import 'package:methodchannel/servicos/servico_nativo.dart';
import 'package:flutter/material.dart';

class DialogoViewModel extends ChangeNotifier {
  final _servicoNativo = ServicoNativo();

  void onMostrarToastPressionado() {
    _servicoNativo.mostrarToast("Essa é a mensagem Toast");
  }

  void onMostrarDialogoPressionado() {
    _servicoNativo.mostrarDialogo(
      "Diálogo Nativo",
      "Esta mensagem veio do Flutter!",
    );
  }
}
