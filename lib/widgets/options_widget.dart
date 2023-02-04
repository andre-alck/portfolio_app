import 'package:flutter/material.dart';
import 'package:portfolio_app/screens/contacts_screen.dart';
import 'package:portfolio_app/screens/sobre_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class OptionsWidget extends StatelessWidget {
  const OptionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      GestureDetector(
        onTap: () => Navigator.push(context,
            MaterialPageRoute(builder: (context) => const SobreScreen())),
        child: const OptionsSection(
            message: 'sobre',
            sideBorder:
                Border(bottom: BorderSide(width: 1, color: Colors.white))),
      ),
      GestureDetector(
          onTap: () {
            final Uri url =
                Uri.parse('https://github.com/andre-alck?tab=repositories');
            launchUrl(url, mode: LaunchMode.inAppWebView);
          },
          child: const OptionsSection(
              message: 'portfólio',
              sideBorder: Border(
                bottom: BorderSide(width: 1, color: Colors.white),
              ))),
      GestureDetector(
          onTap: () => Navigator.push(context,
              MaterialPageRoute(builder: (context) => const ContactsScreen())),
          child: const OptionsSection(
            message: 'contato',
            sideBorder: Border(),
          ))
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
