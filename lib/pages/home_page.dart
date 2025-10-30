import 'package:flutter/material.dart';

class MiWidgetStateFull extends StatefulWidget {
  const MiWidgetStateFull({super.key});

  @override
  State<MiWidgetStateFull> createState() => _MiWidgetStateFullState();
}

class _MiWidgetStateFullState extends State<MiWidgetStateFull> {
  String texto = "Hola soy un statefullwidget";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              texto,
              style: TextStyle(fontSize: 35),
              textAlign: TextAlign.center,
            ),
            ElevatedButton(
              onPressed: () {
                texto = "Hola este es el nuevo valor";
                print(texto);
                setState(() {});
              },
              child: Text("Cambiar texto"),
            ),
          ],
        ),
      ),
    );
  }
}

class MiWidgetEstatico extends StatelessWidget {
  String textoMostrar = "Hola soy un StatelesWidget";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Aplicativo de estados")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(textoMostrar, style: TextStyle(fontSize: 30)),
            ElevatedButton(
              onPressed: () {
                textoMostrar = "hola como estas";
                print(textoMostrar);
              },
              child: Text("Cambiar el valor de la variable a hola como estas"),
            ),
          ],
        ),
      ),
    );
  }
}