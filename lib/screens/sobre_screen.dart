import 'package:flutter/material.dart';
import 'package:portfolio_app/core/appbar_widget.dart';

class SobreScreen extends StatelessWidget {
  const SobreScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: const AppBarWidget(),
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
              Padding(
                padding: const EdgeInsets.only(top: 75, bottom: 75),
                child: RichText(
                    text: const TextSpan(
                        text: 'clique para saber mais!',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: "Regular"))),
              ),
              const SingleTile(
                  description:
                      'Cursei Análise e Desenvolvimento de Sistemas durante 4 semestres na Fatec Itu e estou finalizando o curso no Cruzeiro do Sul Virtual.\nFui Bolsista de Iniciação, sendo responsável por pesquisar, estudar e descrever os métodos e algoritmos de reconhecimento facial Viola-Jones e Convolutional Neural Networks, bem como desenvolver seus códigos de implementação em linguagem Python.',
                  imageName: "fatec_sobrescreen_image.png"),
              const SizedBox(height: 75),
              const SingleTile(
                  description:
                      'Cursei Automação Industrial no Instituto Federal de Educação, Ciência e Tecnologia de São Paulo, Campus Salto.',
                  imageName: "ifsp_sobrescreen_image.png"),
              const SizedBox(height: 75),
              const SingleTile(
                  description:
                      'Trabalho como Estagiário em Desenvolvimento na Empresa Auto Geral Autopeças LTDA., onde fui designado a desenvolver uma aplicação responsável pelo gerenciamento de estoque da empresa.\nPara desenvolver a solução, utilizo Flutter, Dart, SpringBoot, Java, MySQL, Git e GitHub.\nPossuo experiência com levantamento e análise de requisitos, validação com stakeholders, documentação técnica e de utilização das funcionalidades dos sistemas e metodologia ágil Kanban.',
                  imageName: "autogeral_sobrescreen_image.jpg")
            ]),
          )));
}

class SingleTile extends StatelessWidget {
  final String imageName;
  final String description;

  const SingleTile(
      {Key? key, required this.imageName, required this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
        title: Image.asset("assets/images/$imageName", height: 75),
        iconColor: Colors.white,
        collapsedIconColor: Colors.white,
        children: <Widget>[
          ListTile(
              title: RichText(
                  text: TextSpan(
                      text: description,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: "Regular"))))
        ]);
  }
}
