import 'package:flutter/material.dart';

class OptionsWidget extends StatelessWidget {
  const OptionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
        OptionsSection(
            message: 'sobre',
            sideBorder: Border(
                right: BorderSide(width: 1, color: Colors.white),
                bottom: BorderSide(width: 1, color: Colors.white))),
        OptionsSection(
            message: 'portfólio',
            sideBorder:
                Border(bottom: BorderSide(width: 1, color: Colors.white))),
      ]),
      Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
        OptionsSection(
            message: 'resumo',
            sideBorder:
                Border(right: BorderSide(width: 1, color: Colors.white))),
        OptionsSection(message: 'contato')
      ])
    ]);
  }
}

class OptionsSection extends StatelessWidget {
  final String message;
  final Border? sideBorder;
  const OptionsSection({Key? key, required this.message, this.sideBorder})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(border: sideBorder),
        child: Center(
            child: RichText(
                text: TextSpan(
                    text: message,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: "Regular")))));
  }
}
