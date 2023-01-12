import 'package:flutter/material.dart';

class OptionsWidget extends StatelessWidget {
  const OptionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(children: [
            Container(
                width: 100,
                height: 100,
                decoration: const BoxDecoration(
                    border: Border(
                        right: BorderSide(width: 2, color: Colors.white),
                        bottom: BorderSide(width: 2, color: Colors.white))),
                child: Center(
                    child: RichText(
                        text: const TextSpan(
                            text: 'sobre',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: "Regular"))))),
            Container(
                width: 100,
                height: 100,
                decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(width: 2, color: Colors.white))),
                child: Center(
                    child: RichText(
                        text: const TextSpan(
                            text: 'portfólio',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: "Regular")))))
          ]),
          Row(children: [
            Container(
                width: 100,
                height: 100,
                decoration: const BoxDecoration(
                    border: Border(
                        right: BorderSide(width: 2, color: Colors.white))),
                child: Center(
                    child: RichText(
                        text: const TextSpan(
                            text: 'portfólio',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: "Regular"))))),
            SizedBox(
                width: 100,
                height: 100,
                child: Center(
                    child: RichText(
                        text: const TextSpan(
                            text: 'portfólio',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: "Regular")))))
          ])
        ]);
  }
}
