import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WhoAmIWidget extends StatelessWidget {
  const WhoAmIWidget({super.key});

  @override
  Widget build(BuildContext context) => Column(children: <Widget>[
        const CircleAvatar(
            backgroundColor: Colors.white,
            radius: 80,
            child: CircleAvatar(
                backgroundImage:
                    AssetImage("assets/images/profile_picture.jpg"),
                radius: 77)),
        const SizedBox(height: 16),
        Text('André Carvalho',
            style: GoogleFonts.nunito(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold)),
        const SizedBox(height: 8),
        Text('desenvolvedor mobile',
            style: GoogleFonts.nunito(color: Colors.white, fontSize: 24)),
      ]);
}
