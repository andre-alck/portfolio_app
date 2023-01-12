import 'package:flutter/material.dart';

class OptionsWidget extends StatelessWidget {
  const OptionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Container(
            width: 100,
            height: 100,
            decoration: const BoxDecoration(
                border: Border(
                    right: BorderSide(width: 1, color: Colors.white),
                    bottom: BorderSide(width: 1, color: Colors.white))),
            child: Center(
                child: RichText(
                    text: const TextSpan(
                        text: 'sobre',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: "Regular"))))),
        Container(
            width: 100,
            height: 100,
            decoration: const BoxDecoration(
                border:
                    Border(bottom: BorderSide(width: 1, color: Colors.white))),
            child: Center(
                child: RichText(
                    text: const TextSpan(
                        text: 'portfólio',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: "Regular")))))
      ]),
      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Container(
            width: 100,
            height: 100,
            decoration: const BoxDecoration(
                border:
                    Border(right: BorderSide(width: 1, color: Colors.white))),
            child: Center(
                child: RichText(
                    text: const TextSpan(
                        text: 'resumo',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: "Regular"))))),
        SizedBox(
            width: 100,
            height: 100,
            child: Center(
                child: RichText(
                    text: const TextSpan(
                        text: 'contato',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: "Regular")))))
      ])
    ]);
  }
}
