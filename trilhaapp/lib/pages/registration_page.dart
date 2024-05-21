import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:trilhaapp/repositories/languages_repo.dart';
import 'package:trilhaapp/repositories/level_repository.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  // Define the nameController in the widget
  var nameController = TextEditingController(text: '');
  var birthDayController = TextEditingController(text: '');
  DateTime? birthDay;
  var levels = [];
  var languages = [];
  var levelRepository = LevelRepository();
  var languageRepository = LanguagesRepository();
  var selectedLanguages = [];
  var selectedLevel = "";
  double choosenSalary = 0;
  int expTime = 0;

  bool saving = false;
  @override
  void initState() {
    super.initState();
    levels = LevelRepository().returnLevels();
    languages = LanguagesRepository().returnLanguages();
  }

  List<DropdownMenuItem<int>> returnItens(int quantidadeMaxima) {
    var itens = <DropdownMenuItem<int>>[];
    for (var i = 0; i <= quantidadeMaxima; i++) {
      itens.add(DropdownMenuItem(
        child: Text(i.toString()),
        value: i,
      ));
    }
    return itens;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meu dados'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Nome',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
            ),
            TextField(
              controller: nameController,
            ),
            SizedBox(
              height: 10,
            ),
            Text("Data de Nascimento"),
            TextField(
              controller: birthDayController,
              readOnly: true,
              onTap: () async {
                var data = await showDatePicker(
                    context: context,
                    initialDate: DateTime(2000, 1, 1),
                    firstDate: DateTime(1900, 5, 20),
                    lastDate: DateTime(2023, 10, 23));
                if (data != null) {
                  birthDayController.text = data.toString();
                  birthDay = data;
                }
              },
            ),
            const Text('Nivel de experiencia'),
            Column(
                children: levels
                    .map((nivel) => RadioListTile(
                        dense: true,
                        title: Text(nivel.toString()),
                        selected: selectedLevel == nivel,
                        value: nivel.toString(),
                        groupValue: selectedLevel,
                        onChanged: (value) {
                          print(value);
                          setState(() {
                            selectedLevel = value.toString();
                          });
                        }))
                    .toList()),
            const Text('Linguagens Preferidas'),
            Column(
              children: languages
                  .map((linguagem) => CheckboxListTile(
                      dense: true,
                      title: Text(linguagem),
                      value: selectedLanguages.contains(linguagem),
                      onChanged: (bool? value) {
                        if (value!) {
                          setState(() {
                            selectedLanguages.add(linguagem);
                          });
                        } else {
                          setState(() {
                            selectedLanguages.remove(linguagem);
                          });
                        }
                      }))
                  .toList(),
            ),
            const Text('Pretensão Salarial'),
            Slider(
              min: 0,
              max: 10000,
              value: choosenSalary,
              onChanged: (double value) {
                setState(() {
                  choosenSalary = value;
                });
              },
            ),
            Text('R\$ ${choosenSalary.toStringAsFixed(2)}'),
            TextButton(
                onPressed: () {
                  print(nameController);
                },
                child: const Text('Salvar'))
          ],
        ),
      ),
    );
  }
}
