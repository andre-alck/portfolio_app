import 'package:flutter/material.dart';

class OptionsWidget extends StatelessWidget {
  const OptionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(children: [
        Container(
            decoration: const BoxDecoration(
                border: Border(
                    right: BorderSide(width: 2, color: Colors.black),
                    bottom: BorderSide(width: 2, color: Colors.black))),
            padding: const EdgeInsets.all(20),
            child: const Text('sobre')),
        Container(
            decoration: const BoxDecoration(
                border:
                    Border(bottom: BorderSide(width: 2, color: Colors.black))),
            padding: const EdgeInsets.all(20),
            child: const Text('porfólio'))
      ]),
      Row(children: [
        Container(
            decoration: const BoxDecoration(
                border:
                    Border(right: BorderSide(width: 2, color: Colors.black))),
            padding: const EdgeInsets.all(20),
            child: const Text('resumo')),
        Container(
            padding: const EdgeInsets.all(20), child: const Text('contato'))
      ])
    ]);
  }
}
