import 'package:flutter/material.dart';

class WhoAmIWidget extends StatelessWidget {
  const WhoAmIWidget({super.key});

  @override
  Widget build(BuildContext context) => Column(children: <Widget>[
        const CircleAvatar(
            backgroundColor: Colors.white,
            radius: 105,
            child: CircleAvatar(
                backgroundImage:
                    AssetImage("assets/images/profile_picture.jpg"),
                radius: 100)),
        const SizedBox(height: 16),
        RichText(
            text: const TextSpan(
                text: "André Carvalho",
                style: TextStyle(
                    color: Colors.white, fontSize: 30, fontFamily: "Regular"))),
        const SizedBox(height: 8),
        RichText(
            text: const TextSpan(
                text: "desenvolvedor mobile",
                style: TextStyle(
                    color: Colors.white, fontSize: 24, fontFamily: "Regular")))
      ]);
}
