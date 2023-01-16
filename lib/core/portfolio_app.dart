import 'package:flutter/material.dart';
import 'package:portfolio_app/screens/home_screen.dart';
import 'package:portfolio_app/screens/sobre_screen.dart';

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) =>
      const MaterialApp(home: SobreScreen(), debugShowCheckedModeBanner: false);
}
