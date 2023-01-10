import 'package:flutter/material.dart';

class WhoAmIWidget extends StatelessWidget {
  const WhoAmIWidget({super.key});

  @override
  Widget build(BuildContext context) => Column(children: const <Widget>[
        CircleAvatar(
            backgroundColor: Colors.white,
            radius: 105,
            child: CircleAvatar(
                backgroundImage:
                    AssetImage("assets/images/profile_picture.jpg"),
                radius: 100)),
        Text("André Carvalho"),
        Text("desenvolvedor mobile")
      ]);
}
