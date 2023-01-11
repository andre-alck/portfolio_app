import 'package:flutter/material.dart';

class TechStackWidget extends StatelessWidget {
  const TechStackWidget({super.key});

  @override
  Widget build(BuildContext context) =>
      ListView(scrollDirection: Axis.horizontal, children: <Widget>[
        Image.asset("assets/images/flutter_tech_stack_image.png", width: 60),
        Image.asset("assets/images/dart_tech_stack_image.png", width: 60),
        Image.asset("assets/images/java_tech_stack_image.png", width: 60),
        Image.asset("assets/images/spring_boot_tech_stack_image.png",
            width: 60),
        Image.asset("assets/images/mysql_tech_stack_image.png", width: 60),
        Image.asset("assets/images/git_tech_stack_image.png", width: 60),
        Image.asset("assets/images/github_tech_stack_image.png", width: 60),
        Image.asset("assets/images/rabbitmq_tech_stack_image.png", width: 60),
        Image.asset("assets/images/android_tech_stack_image.png", width: 60),
        Image.asset("assets/images/ios_tech_stack_image.png", width: 60),
        Image.asset("assets/images/firebase_tech_stack_image.png", width: 60),
        Image.asset("assets/images/postman_tech_stack_image.png", width: 60),
        Image.asset("assets/images/insomnia_tech_stack_image.png", width: 60),
        Image.asset("assets/images/visual_studio_code_tech_stack_image.png",
            width: 60),
      ]);
}
