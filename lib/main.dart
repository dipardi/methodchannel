import 'package:methodchannel/telas/tela_principal.dart';
import 'package:methodchannel/viewmodels/dialogo_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DialogoViewModel(),
      child: MaterialApp(
        title: 'Flutter Nativo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
          useMaterial3: true,
        ),
        home: const TelaPrincipal(),
      ),
    );
  }
}
