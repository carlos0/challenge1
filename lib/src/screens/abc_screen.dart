import 'package:flutter/material.dart';

class AbcScreen extends StatelessWidget {
  const AbcScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: const Text("Challenge #1"), centerTitle: true,),
      body: body(),
      floatingActionButton: crearFABs(),
    );
  }

  Widget body() {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("A", style: const TextStyle(fontSize: 70))
        ],
      ),
    );
  }

  Widget crearFABs() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.arrow_back_ios),
        ),
        const SizedBox(
          width: 10,
        ),
        FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.arrow_forward_ios),
        ),
      ],
    );
  }
}