import 'package:flutter/material.dart';

class SobreScreen extends StatelessWidget {
  const SobreScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 3, 4, 54),
          leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () => Navigator.pop(context)),
          title: const Text('menu')),
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color.fromARGB(255, 3, 4, 54), Colors.black],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter)),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50, bottom: 100),
                child: RichText(
                    text: const TextSpan(
                        text: 'clique no “+” para mais informações!',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: "Regular"))),
              ),
              // ExpansionTile(
              //     title:
              //         Image.asset("assets/images/fatec_sobrescreen_image.png")),
              // ExpansionTile(
              //   title: Text('ExpansionTile 1'),
              //   subtitle: Text('Trailing expansion arrow icon'),
              //   children: <Widget>[
              //     ListTile(title: Text('This is tile number 1')),
              //   ],
              // )
            ],
          )));
}
