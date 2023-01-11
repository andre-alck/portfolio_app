import 'package:flutter/material.dart';
import 'package:portfolio_app/tech_stack_widget.dart';
import 'package:portfolio_app/who_am_i_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color.fromARGB(255, 25, 1, 133), Colors.black],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter)),
          child: Column(children: const [
            WhoAmIWidget(),
            Expanded(child: TechStackWidget())
          ])));
}
