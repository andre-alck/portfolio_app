import 'package:flutter/material.dart';

class TechStackWidget extends StatelessWidget {
  const TechStackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    const String prefix = "assets/images";
    const List<String> imagesPaths = [
      "$prefix/flutter_tech_stack_image.png",
      "$prefix/dart_tech_stack_image.png",
      "$prefix/java_tech_stack_image.png",
      "$prefix/spring_boot_tech_stack_image.png",
      "$prefix/mysql_tech_stack_image.png",
      "$prefix/git_tech_stack_image.png",
      "$prefix/github_tech_stack_image.png",
      "$prefix/rabbitmq_tech_stack_image.png",
      "$prefix/android_tech_stack_image.png",
      "$prefix/ios_tech_stack_image.png",
      "$prefix/firebase_tech_stack_image.png",
      "$prefix/postman_tech_stack_image.png",
      "$prefix/insomnia_tech_stack_image.png",
      "$prefix/visual_studio_code_tech_stack_image.png"
    ];

    return ListView.builder(
        itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Image.asset(imagesPaths[index])),
        scrollDirection: Axis.horizontal,
        itemCount: imagesPaths.length);
  }
}
