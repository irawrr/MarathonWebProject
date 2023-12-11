import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BMIHomeScreen extends StatelessWidget {
  const BMIHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PageState(),
      child: const BMIScreen(),
    );
  }
}

class PageState extends ChangeNotifier {
  var chosenGender = '';
  var current = 24.2;

  void updateIMT(h, w) {
    current = w / (h/100 * h/100);
    notifyListeners();
  }

  void updateGender(value){
    chosenGender = value;
    notifyListeners();
  }

  void resetIMT(value) {
    current = value;
    chosenGender = '';
    notifyListeners();
  }
}

class BMIScreen extends StatefulWidget {
  const BMIScreen({super.key});

  @override
  State<BMIScreen> createState() => _BMIScreenState();
}

class _BMIScreenState extends State<BMIScreen> {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<PageState>();
    var curBMI = appState.current;

    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'BMI калькулятор',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    SizedBox(height: 8),
                  ],
                ), //HEADER
                Column(
                  children: [
                    Container(
                        width: 400,
                        child: Text(
                          "Индекс массы тела - величина, позволяющая оценить соответствие массы человека и его роста. Введите данные, чтобы узнать свой ИМТ:",
                          textAlign: TextAlign.center,
                        )
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            GenderOption(),
                          ]
                      ),
                    ),
                    const InputForms(),
                  ],
                ), //GENDER ICONS AND INPUT FORMS
              ],
            ),
            SizedBox(width: 50),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BMIResult(bmi: curBMI),
              ],
            )
          ],
        ),
      ),
      appBar: AppBar(
        leadingWidth: 110,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            onPressed: () { Navigator.pushNamed(context, '/info'); },
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromRGBO(204, 204, 204, 1),
              elevation: 0,
            ),
            child: Text(
              "Назад",
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
        title: Text(
          "MARATHON SKILLS 2023",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color.fromRGBO(82, 82, 82, 1),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color.fromRGBO(82, 82, 82, 1),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(
            "тут будет таймер",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class GenderOption extends StatefulWidget {
  const GenderOption({super.key});

  @override
  GenderOptionState createState() {
    return GenderOptionState();
  }
}

class GenderOptionState extends State<GenderOption> {

  @override
  Widget build(BuildContext context) {
    var appState = context.watch<PageState>();

    return Row(
      children: [
        Column(
          children: [
            OutlinedButton(
                onPressed: (){ appState.updateGender('male'); },
                style: OutlinedButton.styleFrom(
                  side: BorderSide(
                      width: appState.chosenGender == 'male' ? 2.0 : 1.0,
                      color: Color.fromRGBO(101, 101, 101, 1)
                  ),
                  backgroundColor: Color.fromRGBO(234, 234, 234, 1),
                ),
                child: GenderCard(gender: 'male', genderName: 'Мужской')
            ),
          ],
        ), //m
        SizedBox(width: 10),
        Column(
          children: [
            OutlinedButton(
                onPressed: (){ appState.updateGender('female');},
                style: OutlinedButton.styleFrom(
                  side: BorderSide(
                      width: appState.chosenGender == 'female' ? 2.0 : 1.0,
                      color: Color.fromRGBO(101, 101, 101, 1)
                  ),
                  backgroundColor:  Color.fromRGBO(234, 234, 234, 1),
                ),
                child: GenderCard(gender: 'female', genderName: 'Женский')
            ),
          ],
        ), //f
      ],
    );
  }
}

class GenderCard extends StatelessWidget {
  const GenderCard({
    super.key,
    required this.gender,
    required this.genderName,
  });

  final gender;
  final genderName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
          children:[
            ImageIcon(
              AssetImage('assets/gender_icons/${gender}.png'),
              color: Color.fromRGBO(101, 101, 101, 1),
              size: 80,
            ),
            SizedBox(height: 8),
            Text(
              '${genderName}',
              style: TextStyle(color: Color.fromRGBO(101, 101, 101, 1)),
            ),
          ]
      ),
    );
  }
}

class BMIResult extends StatelessWidget {
  const BMIResult({
    super.key,
    required this.bmi,
  });

  final bmi;

  @override
  Widget build(BuildContext context) {
    final bmiOption;
    final bmiOptionName;
    final indent_left;
    final indent_right;
    if (bmi <= 18.5) {
      bmiOption = "underweight";
      bmiOptionName = "Недостаточный";
      if (bmi <= 11) {
        indent_left = 0;
        indent_right = 400;
      }
      else {
        indent_left = 100*(bmi-11)/7.5;
        indent_right = 400 - 100*(bmi-11)/7.5;
      }
    } else if (bmi <= 25) {
      bmiOption = "healthy";
      bmiOptionName = "Здоровый";
      indent_left = 100*(bmi-18.5)/7.5 + 100;
      indent_right = 400 - (100*(bmi-18.5)/7.5 + 100);
    } else if (bmi <= 30) {
      bmiOption = "overweight";
      bmiOptionName = "Избыточный";
      indent_left = 100*(bmi-25)/5 + 200;
      indent_right = 400 - (100*(bmi-25)/5 + 200);
    } else {
      bmiOption = "obese";
      bmiOptionName = "Ожирение";
      if (bmi > 35) {
        indent_left = 400;
        indent_right = 0;
      }
      else {
        indent_left = 100*(bmi-30)/5 + 300;
        indent_right = 400 - (100*(bmi-30)/5 + 300);
      }
    }

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Card(
              elevation: 0,
              color: Color.fromRGBO(234, 234, 234, 1),
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Color.fromRGBO(101, 101, 101, 1)),
                borderRadius: const BorderRadius.all(Radius.circular(8)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                    children:[
                      ImageIcon(
                        AssetImage('assets/bmi_icons/${bmiOption}.png'),
                        color: Color.fromRGBO(101, 101, 101, 1),
                        size: 160,
                      ),
                      SizedBox(height: 8),
                      Text(
                        '${bmiOptionName}',
                        style: TextStyle(color: Color.fromRGBO(101, 101, 101, 1)),
                      ),
                    ]
                ),
              )
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: Row(
            children: [
              SizedBox(width: indent_left),
              Column(
                children: [
                  Text("${bmi.toStringAsFixed(2)}", style: TextStyle(fontSize: 20,)),
                  Text("|", style: TextStyle(fontSize: 15,)),
                ],
              ),
              SizedBox(width: indent_right),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Row(
            children: [
              Column(
                children: [
                  Container(
                    width: 100,
                    height: 15,
                    color: Colors.yellow,
                  ),
                  SizedBox(height: 8),
                  Text(
                      'Недостаточный',
                      style: TextStyle(color: Color.fromRGBO(180, 180, 180, 1), fontSize: 12)
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    width: 100,
                    height: 15,
                    color: Colors.lightGreen,
                  ),
                  SizedBox(height: 8),
                  Text(
                      'Здоровый',
                      style: TextStyle(color: Color.fromRGBO(180, 180, 180, 1), fontSize: 12)
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    width: 100,
                    height: 15,
                    color: Colors.yellow,
                  ),
                  SizedBox(height: 8),
                  Text(
                      'Избыточный',
                      style: TextStyle(color: Color.fromRGBO(180, 180, 180, 1), fontSize: 12)
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    width: 100,
                    height: 15,
                    color: Colors.red,
                  ),
                  SizedBox(height: 8),
                  Text(
                      'Ожирение',
                      style: TextStyle(color: Color.fromRGBO(180, 180, 180, 1), fontSize: 12)
                  ),
                ],
              ),
            ],
          ),
        ), //COLORED BOXES WITH TITLES
      ],
    );
  }
}


class InputForms extends StatefulWidget {
  const InputForms({super.key});

  @override
  InputFormsState createState() {
    return InputFormsState();
  }
}

class InputFormsState extends State<InputForms> {
  final _formKey = GlobalKey<FormState>();

  final _heightController = TextEditingController();
  final _weightController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var appState = context.watch<PageState>();

    return Form(
      key: _formKey,
      child: Center(
        child: Column(
          mainAxisSize:MainAxisSize.min,
          children: [
            Row(
              mainAxisSize:MainAxisSize.min,
              children: [
                Text ("Рост:"),
                SizedBox(width: 10),
                SizedBox(
                  width: 40,
                  child: TextFormField(
                    controller: _heightController,
                    validator: (value) {
                      if (value == null || value.isEmpty || double.tryParse(value) == null) {
                        return '!';
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(width: 10),
                Text ("см"),
              ],
            ),
            Row(
              mainAxisSize:MainAxisSize.min,
              children: [
                Text("Вес:"),
                SizedBox(width: 10),
                SizedBox(
                  width: 40,
                  child: TextFormField(
                    controller: _weightController,
                    validator: (value) {
                      if (value == null || value.isEmpty || double.tryParse(value) == null) {
                        return '!';
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(width: 10),
                Text("кг"),
              ],
            ),
            SizedBox(height: 15),
            Row(
                mainAxisSize:MainAxisSize.min,
                children: [
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(backgroundColor: Color.fromRGBO(242, 242, 242, 1)),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        final userData = {
                          'height': double.parse(_heightController.text),
                          'weight': double.parse(_weightController.text),
                        };
                        appState.updateIMT(userData['height'], userData['weight']);
                        //print(userData.toString());
                        //print(appState.current);
                        //_formKey.currentState!.save();
                      }
                    },
                    child: const Text(
                        'Рассчитать',
                        style: TextStyle(color: Colors.black)
                    ),
                  ),
                  SizedBox(width: 10),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(backgroundColor: Color.fromRGBO(242, 242, 242, 1)),
                    onPressed: () {
                      _formKey.currentState!.reset();
                      _heightController.text = "";
                      _weightController.text = "";
                      appState.resetIMT(24.2);
                    },
                    child: const Text(
                        'Отмена',
                        style: TextStyle(color: Colors.black)
                    ),
                  ),
                ]
            ),
          ],
        ),
      ),
    );
  }
}