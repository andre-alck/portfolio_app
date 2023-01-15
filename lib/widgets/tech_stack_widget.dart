import 'package:flutter/material.dart';

class TechStackWidget extends StatelessWidget {
  const TechStackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    const String prefix = "assets/images";
    return ListView(scrollDirection: Axis.horizontal, children: <Widget>[
      Padding(
          padding: const EdgeInsets.only(right: 25),
          child: Image.asset("$prefix/flutter_tech_stack_image.png")),
      Padding(
          padding: const EdgeInsets.only(right: 25),
          child: Image.asset("$prefix/dart_tech_stack_image.png")),
      Padding(
          padding: const EdgeInsets.only(right: 25),
          child: Image.asset("$prefix/java_tech_stack_image.png")),
      Padding(
          padding: const EdgeInsets.only(right: 25),
          child: Image.asset("$prefix/spring_boot_tech_stack_image.png")),
      Padding(
          padding: const EdgeInsets.only(right: 25),
          child: Image.asset("$prefix/mysql_tech_stack_image.png")),
      Padding(
          padding: const EdgeInsets.only(right: 25),
          child: Image.asset("$prefix/git_tech_stack_image.png")),
      Padding(
          padding: const EdgeInsets.only(right: 25),
          child: Image.asset("$prefix/github_tech_stack_image.png")),
      Padding(
          padding: const EdgeInsets.only(right: 25),
          child: Image.asset("$prefix/rabbitmq_tech_stack_image.png")),
      Padding(
          padding: const EdgeInsets.only(right: 25),
          child: Image.asset("$prefix/android_tech_stack_image.png")),
      Padding(
          padding: const EdgeInsets.only(right: 25),
          child: Image.asset("$prefix/ios_tech_stack_image.png")),
      Padding(
          padding: const EdgeInsets.only(right: 25),
          child: Image.asset("$prefix/firebase_tech_stack_image.png")),
      Padding(
          padding: const EdgeInsets.only(right: 25),
          child: Image.asset("$prefix/postman_tech_stack_image.png")),
      Padding(
          padding: const EdgeInsets.only(right: 25),
          child: Image.asset("$prefix/insomnia_tech_stack_image.png")),
      Padding(
          padding: const EdgeInsets.only(right: 25),
          child: Image.asset(
            "$prefix/visual_studio_code_tech_stack_image.png",
          ))
    ]);
  }
}
