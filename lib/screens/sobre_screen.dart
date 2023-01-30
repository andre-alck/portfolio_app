import 'package:flutter/material.dart';
import 'package:portfolio_app/core/appbar_widget.dart';

class SobreScreen extends StatefulWidget {
  const SobreScreen({super.key});

  @override
  State<SobreScreen> createState() => _SobreScreenState();
}

class _SobreScreenState extends State<SobreScreen> {
  final Info _infoFatec = Info(
      description:
          'Cursei Análise e Desenvolvimento de Sistemas durante 4 semestres na Fatec Itu e estou finalizando o curso no Cruzeiro do Sul Virtual.\nFui Bolsista de Iniciação, sendo responsável por pesquisar, estudar e descrever os métodos e algoritmos de reconhecimento facial Viola-Jones e Convolutional Neural Networks, bem como desenvolver seus códigos de implementação em linguagem Python.',
      imagePath: 'assets/images/fatec_sobrescreen_image.png',
      id: 1);

  final Info _infoIfsp = Info(
      description:
          'Cursei Automação Industrial no Instituto Federal de Educação, Ciência e Tecnologia de São Paulo, Campus Salto.',
      imagePath: 'assets/images/ifsp_sobrescreen_image.png',
      id: 2);

  final Info _infoAutoGeral = Info(
      description:
          'Trabalho como Estagiário em Desenvolvimento na Empresa Auto Geral Autopeças LTDA., onde fui designado a desenvolver uma aplicação responsável pelo gerenciamento de estoque da empresa.\nPara desenvolver a solução, utilizo Flutter, Dart, SpringBoot, Java, MySQL, Git e GitHub.\nPossuo experiência com levantamento e análise de requisitos, validação com stakeholders, documentação técnica e de utilização das funcionalidades dos sistemas e metodologia ágil Kanban.',
      imagePath: 'assets/images/autogeral_sobrescreen_image.jpg',
      id: 3);

  late final List<Info> _infos = [_infoFatec, _infoIfsp, _infoAutoGeral];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              const SizedBox(height: 75),
              RichText(
                  text: const TextSpan(
                      text: 'clique para saber mais!',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: "Regular"))),
              const SizedBox(height: 50),
              ExpansionPanelList.radio(
                  expandedHeaderPadding:
                      const EdgeInsets.only(top: 50, bottom: 50),
                  children: _infos
                      .map<ExpansionPanelRadio>(
                          (Info info) => ExpansionPanelRadio(
                                value: info.id,
                                backgroundColor: Colors.transparent,
                                canTapOnHeader: true,
                                headerBuilder:
                                    (BuildContext context, bool isExpanded) =>
                                        ListTile(
                                            title: Image.asset(info.imagePath,
                                                height: 100)),
                                body: ListTile(
                                    title: RichText(
                                        text: TextSpan(
                                            text: info.description,
                                            style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontFamily: "Regular")))),
                              ))
                      .toList())
            ]))));
  }
}

class Info {
  final String description;
  final String imagePath;
  final int id;

  Info({required this.description, required this.imagePath, required this.id});
}
