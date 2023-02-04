import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
                padding: EdgeInsets.only(top: 100, bottom: 25),
                child: WhoAmIWidget()),
            const OptionsWidget(),
            Padding(
                padding: const EdgeInsets.only(top: 25, bottom: 25),
                child: Text(
                  '</tech_stack>',
                  style: GoogleFonts.nunito(
                    color: Colors.white,
                    fontStyle: FontStyle.italic,
                    fontSize: 24,
                  ),
                )),
            const SizedBox(height: 44, child: TechStackWidget())
          ]))));
}
