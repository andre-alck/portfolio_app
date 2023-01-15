import 'package:flutter/material.dart';
import 'package:portfolio_app/widgets/options_widget.dart';
import 'package:portfolio_app/widgets/tech_stack_widget.dart';
import 'package:portfolio_app/widgets/who_am_i_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color.fromARGB(255, 3, 4, 54), Colors.black],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter)),
          child: SingleChildScrollView(
              child: Column(children: [
            const Padding(
                padding: EdgeInsets.only(top: 100, bottom: 71),
                child: WhoAmIWidget()),
            const Padding(
                padding: EdgeInsets.only(bottom: 71), child: OptionsWidget()),
            Padding(
              padding: const EdgeInsets.only(bottom: 25),
              child: RichText(
                  text: const TextSpan(
                      text: '</tech_stack>',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontFamily: "Regular"))),
            ),
            const SizedBox(height: 44, child: TechStackWidget())
          ]))));
}
