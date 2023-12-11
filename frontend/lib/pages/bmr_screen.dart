import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BMRHomeScreen extends StatelessWidget {
  const BMRHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => BMRHomeScreenState(),
      builder: (context, child) {
          return MaterialApp(
            title: 'Marathon Skills 2023 - BMR Calculator',
            theme: ThemeData(
              useMaterial3: false,
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
            ),
            home: BMRScreen(),
          );
        }
    );
  }
}

class BMRHomeScreenState extends ChangeNotifier {
  var current = 1.67;
  var chosenGender = '';

  void updateBMR(h, w, a) {
    if (chosenGender == 'female') {
      current = 655 + (9.6 * w) + (1.8 * h) - (4.7 * a);
    } else if (chosenGender == 'male'){
      current = 66 + (13.7 * w) + (5 * h) - (6.8 * a);
    }
    notifyListeners();
  }

  void updateGender(value){
    chosenGender = value;
    notifyListeners();
  }

  void resetBMR() {
    current = 1.67;
    chosenGender = '';
    notifyListeners();
  }
}

class BMRScreen extends StatefulWidget {
  const BMRScreen({super.key});

  @override
  State<BMRScreen> createState() => _BMRScreenState();
}

class _BMRScreenState extends State<BMRScreen> {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<BMRHomeScreenState>();
    var curBMR = appState.current;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'BMR калькулятор',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                SizedBox(height: 10)
              ],
            ), //header
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        width: 400,
                        child: Text(
                          "Основной обмен (basal metabolic rate) — минимальное количество энергии, необходимое для нормальной жизнедеятельности организма. Введите свои данные для расчёта BMR:",
                          textAlign: TextAlign.center,
                        )
                    ),
                    SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: GenderOption(),
                    ),
                    const InputForms(),
                  ],
                ), //input column
                SizedBox(width: 50),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BMRResult(bmr: curBMR),
                  ],
                ) //bmr column
              ],
            ), //body
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
  GenderOptionState createState() => GenderOptionState();
}

class GenderOptionState extends State<GenderOption> {

  @override
  Widget build(BuildContext context) {
    var appState = context.watch<BMRHomeScreenState>();

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


class BMRResult extends StatelessWidget {
  const BMRResult({
    super.key,
    required this.bmr,
  });

  final bmr;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
              children:[
                Text(
                  "Ваш BMR",
                  style: TextStyle(
                      color: Color.fromRGBO(152, 152, 152, 1),
                      fontSize: 20),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "${bmr.toStringAsFixed(3)}",
                    style: TextStyle(
                        color: Color.fromRGBO(101, 101, 101, 1),
                        fontSize: 30),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "Ежедневно тратится калорий",
                      style: TextStyle(
                          color: Color.fromRGBO(152, 152, 152, 1),
                          fontSize: 18),
                    ),
                    SizedBox(width: 4),
                    ActivityAlert(),
                  ],
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                              width: 200,
                              child: Text ("Cидячий:",
                                textAlign: TextAlign.right,
                                style: TextStyle(color: Colors.blue),
                              )),
                          SizedBox(height: 4),
                          Container(
                              width: 200,
                              child: Text ("Маленькая активность:",
                                  textAlign: TextAlign.right,
                                  style: TextStyle(color: Colors.green)
                              )),
                          SizedBox(height: 4),
                          Container(
                              width: 200,
                              child: Text ("Средняя активность:",
                                  textAlign: TextAlign.right,
                                  style: TextStyle(color: Colors.amber)
                              )),
                          SizedBox(height: 4),
                          Container(
                              width: 200,
                              child:Text ("Сильная активность:",
                                  textAlign: TextAlign.right,
                                  style: TextStyle(color: Colors.red)
                              )),
                          SizedBox(height: 4),
                          Container(
                              width: 200,
                              child:Text ("Максимальная активность:",
                                  textAlign: TextAlign.right,
                                  style: TextStyle(color: Color.fromRGBO(171, 2, 1, 1))
                              )),
                        ],
                      ),
                    ),
                    SizedBox(width: 10),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                              width: 100,
                              child: Text ("${(bmr*1.2).toStringAsFixed(3)}",
                                textAlign: TextAlign.left,
                                style: TextStyle(color: Colors.blue),
                              )),
                          SizedBox(height: 4),
                          Container(
                              width: 100,
                              child: Text ("${(bmr*1.375).toStringAsFixed(3)}",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(color: Colors.green)
                              )),
                          SizedBox(height: 4),
                          Container(
                              width: 100,
                              child: Text ("${(bmr*1.55).toStringAsFixed(3)}",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(color: Colors.amber)
                              )),
                          SizedBox(height: 4),
                          Container(
                              width: 100,
                              child:Text ("${(bmr*1.725).toStringAsFixed(3)}",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(color: Colors.red)
                              )),
                          SizedBox(height: 4),
                          Container(
                              width: 100,
                              child:Text ("${(bmr*1.9).toStringAsFixed(3)}",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(color: Color.fromRGBO(171, 2, 1, 1))
                              )),
                        ],
                      ),
                    )
                  ],
                ),
              ]
          ),
        )
      ],
    );
  }
}


class InputForms extends StatefulWidget {
  const InputForms({super.key});

  @override
  InputFormsState createState() => InputFormsState();
}

class InputFormsState extends State<InputForms> {
  final _formKey = GlobalKey<FormState>();

  final _heightController = TextEditingController();
  final _weightController = TextEditingController();
  final _ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var appState = context.watch<BMRHomeScreenState>();

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
            ), //height
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
            ), //weight
            Row(
              mainAxisSize:MainAxisSize.min,
              children: [
                Text("Возраст:"),
                SizedBox(width: 10),
                SizedBox(
                  width: 40,
                  child: TextFormField(
                    controller: _ageController,
                    validator: (value) {
                      if (value == null || value.isEmpty || double.tryParse(value) == null) {
                        return '!';
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(width: 10),
                Text("лет"),
              ],
            ), //age
            SizedBox(height: 15),
            Row(
                mainAxisSize:MainAxisSize.min,
                children: [
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(backgroundColor: Color.fromRGBO(242, 242, 242, 1)),
                    onPressed: () {
                      if (_formKey.currentState!.validate() && appState.chosenGender != '') {
                        final userData = {
                          'height': double.parse(_heightController.text),
                          'weight': double.parse(_weightController.text),
                          'age': double.parse(_ageController.text),
                        };
                        appState.updateBMR(userData['height'], userData['weight'], userData['age']);
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
                      _ageController.text = "";
                      appState.resetBMR();
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

class ActivityAlert extends StatelessWidget {
  const ActivityAlert({super.key});

  static const List<String> activityNames = <String>[
    "Сидячий образ",
    "Маленькая активность",
    "Средняя активность",
    "Сильная активность",
    "Максимальная активность"
  ];
  static const List<String> activityDesc = <String>[
    "Нет работы или работа за столом",
    "Мало физических работы или занятия спортом 1-3 раза в неделю",
    "Умеренная физическая работа или занятия спортом 3 - 5 дней в неделю",
    "Сильные физическая нагрузка или занятия спортом 6 - 7 дней в неделю",
    "Сильная ежедневная физическая нагрузка или спорт и физическая работа"
  ];

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('Виды активности'),
          content: Container(
            width: double.maxFinite,
            child: ListView.builder(
              shrinkWrap: true,
              padding: const EdgeInsets.all(10),
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(activityNames[index], style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                      Text(activityDesc[index], style: TextStyle(fontSize: 14)),
                    ],
                  ),
                );
              },
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('OK'),
            ),
          ],
        ),
      ),
      icon: const Icon(Icons.info_outline),
      color: Colors.amber,
    );
  }
}
