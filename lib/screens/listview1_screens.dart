import 'package:flutter/material.dart';

// List<String> lista = ['Gorra', 'Betaloco', 'Caramelo', 'God of War'];

final List<String> categorias = [
  'Preparo fisico e nutrição',
  'Doces e chocolates',
  'Chás e infosões',
  'Tudo em alimentos e bebidas',
  'Condimentos e molhos',
  'Frutas e vegetais'
];

class ListView1Screen extends StatelessWidget {
  const ListView1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[400],
          title: const Center(child: Text('Alimentos e bebidas')),
        ),
        body: ListView(
          children: [
            ...categorias.map((e) => ListTile(
                  title: Text(e),
                  leading:
                      const Icon(Icons.stream_rounded), // icono antes del texto
                  trailing: const Icon(
                      Icons.arrow_forward_ios), //icono despues del texto
                  textColor: const Color.fromARGB(255, 1, 158, 53),
                ))
          ],
        ));
  }
}
