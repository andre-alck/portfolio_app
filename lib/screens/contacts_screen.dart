import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactsScreen extends StatelessWidget {
  const ContactsScreen({super.key});

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
          child: SingleChildScrollView(
              child: Column(children: [
            const Padding(
                padding: EdgeInsets.only(top: 75, bottom: 50),
                child: Message(message: 'entre em contato!')),
            const Message(message: 'André Santos Alckmin de Carvalho!'),
            Column(children: <Widget>[
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                            onTap: () {
                              final Uri url = Uri.parse(
                                  "whatsapp://send?phone=+5511934235808");
                              launchUrl(url);
                            },
                            child: const ImageSpace(
                                valueToSubtractWidth: 250,
                                valueToSubtractHeight: 100,
                                assetPath: "whatsapp_contactscreen_image.png",
                                scale: 60))),
                    GestureDetector(
                        onTap: () {
                          final Uri url = Uri.parse(
                              "https://www.linkedin.com/in/andre-alckmin/");
                          launchUrl(url, mode: LaunchMode.inAppWebView);
                        },
                        child: const ImageSpace(
                            valueToSubtractWidth: 325,
                            valueToSubtractHeight: 100,
                            assetPath: "linkedin_contactscreen_image.png",
                            scale: 10.0))
                  ]),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: GestureDetector(
                            onTap: () {
                              final Uri url =
                                  Uri.parse("mailto:andrealck1@gmail.com");
                              launchUrl(url);
                            },
                            child: const ImageSpace(
                                valueToSubtractWidth: 250,
                                valueToSubtractHeight: 300,
                                assetPath: "gmail_contactscreen_image.png",
                                scale: 10.0))),
                    GestureDetector(
                        onTap: () {
                          final Uri url =
                              Uri.parse("https://linktr.ee/andre.alck");
                          launchUrl(url, mode: LaunchMode.inAppWebView);
                        },
                        child: const ImageSpace(
                            valueToSubtractWidth: 325,
                            valueToSubtractHeight: 300,
                            assetPath: "linktree_contactscreen_image.png",
                            scale: 8.0))
                  ])
            ])
          ]))));
}

class Message extends StatelessWidget {
  final String message;
  const Message({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
            text: message,
            style: const TextStyle(
                color: Colors.white, fontSize: 20, fontFamily: "Regular")));
  }
}

class ImageSpace extends StatelessWidget {
  final int valueToSubtractWidth;
  final int valueToSubtractHeight;
  final String assetPath;
  final double scale;

  const ImageSpace(
      {Key? key,
      required this.valueToSubtractWidth,
      required this.valueToSubtractHeight,
      required this.assetPath,
      required this.scale})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width - valueToSubtractWidth,
        height: MediaQuery.of(context).size.width - valueToSubtractHeight,
        decoration:
            BoxDecoration(border: Border.all(color: Colors.white, width: 1)),
        child: Image.asset("assets/images/$assetPath", scale: scale));
  }
}
