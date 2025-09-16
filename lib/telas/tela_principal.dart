import 'package:methodchannel/viewmodels/dialogo_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TelaPrincipal extends StatelessWidget {
  const TelaPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<DialogoViewModel>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Trabalho MethodChannel'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: viewModel.onMostrarToastPressionado,
              child: const Text('Mostrar Toast'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: viewModel.onMostrarDialogoPressionado,
              child: const Text('Mostrar AlertDialog  '),
            ),
          ],
        ),
      ),
    );
  }
}
