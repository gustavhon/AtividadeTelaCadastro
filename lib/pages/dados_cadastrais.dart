import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DadosCadastraisPage extends StatefulWidget {
  final String texto;
  final List<String> dados;

  const DadosCadastraisPage(
      {Key? key, required this.texto, required this.dados})
      : super(key: key);

  @override
  State<DadosCadastraisPage> createState() => _DadosCadastraisPageState();
}

class _DadosCadastraisPageState extends State<DadosCadastraisPage> {
  final TextEditingController nomecontroller = TextEditingController();
  final TextEditingController sobrenomecontroller = TextEditingController();
  final TextEditingController idadecontroller = TextEditingController();
  final TextEditingController dataNascimentocontroller =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.texto)),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        child: Column(
          children: [
            Text(
              "Nome",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
            ),
            TextField(
              controller: nomecontroller,
            ),
            Text(
              "Sobrenome",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
            ),
            TextField(
              controller: sobrenomecontroller,
            ),
            Text(
              "Idade",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
            ),
            TextField(
              controller: idadecontroller,
              keyboardType: TextInputType.number,
            ),
            Text(
              "Data de Nascimento",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
            ),
            TextField(
              controller: dataNascimentocontroller,
            ),
            TextButton(
              onPressed: () {
                print("Nome: ${nomecontroller.text}");
                print("Sobrenome: ${sobrenomecontroller.text}");
                print("Idade: ${idadecontroller.text}");
                print("Data de Nascimento: ${dataNascimentocontroller.text}");
              },
              child: Text("Salvar"),
            ),
          ],
        ),
      ),
    );
  }
}
