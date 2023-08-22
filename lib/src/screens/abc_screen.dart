import 'package:flutter/material.dart';

class AbcScreen extends StatefulWidget {
  const AbcScreen({super.key});

  @override
  State<AbcScreen> createState() => _AbcScreenState();
}

class _AbcScreenState extends State<AbcScreen> {
  String letra = "A";
  int contador = 65;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Challenge #1"),
        centerTitle: true,
      ),
      body: body(),
      floatingActionButton: crearFABs(),
    );
  }

  Widget body() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text(letra, style: const TextStyle(fontSize: 150, fontWeight: FontWeight.bold))],
      ),
    );
  }

  Widget crearFABs() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          onPressed: reducir,
          child: const Icon(Icons.arrow_back_ios),
        ),
        const SizedBox(
          width: 20,
        ),
        FloatingActionButton(
          onPressed: adicionar,
          child: const Icon(Icons.arrow_forward_ios),
        ),
      ],
    );
  }

  void adicionar() => setState(() {
        if (contador == 90) {
          letra = String.fromCharCode(65);
          contador = 65;
        } else {
          letra = String.fromCharCode(contador + 1);
          contador++;
        }
      });

  void reducir() => setState(() {
        if (contador == 65) {
          letra = String.fromCharCode(90);
          contador = 90;
        } else {
          letra = String.fromCharCode(contador - 1);
          contador--;
        }
      });
}
