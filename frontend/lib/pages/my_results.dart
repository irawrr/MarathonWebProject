import 'package:flutter/material.dart';

class MyResultsScreen extends StatefulWidget {
  const MyResultsScreen({super.key});

  @override
  State<MyResultsScreen> createState() => _MyResultsScreen();
}

class _MyResultsScreen extends State<MyResultsScreen> {
  final List<Map> _users = [
    {'marathon': 'Марафон', 'distance': 'Дистанция', 'time': 'Время', 'overall_place': 'Общее место', 'category_place': 'Место по категории'},
    {'marathon': '2014 Japan', 'distance': '42km Full Marathon', 'time': '2h 27m 14s', 'overall_place': '#598', 'category_place': '#184'},
    {'marathon': '2013 Germany', 'distance': '42km Full Marathon', 'time': '2h 27m 13s', 'overall_place': '#604', 'category_place': '#199'},
    {'marathon': '2012 Vietnam', 'distance': '42km Full Marathon', 'time': '2h 37m 14s', 'overall_place': '#623', 'category_place': '#214'},
    {'marathon': '2011 United Kingdom', 'distance': '42km Full Marathon', 'time': '2h 28m 14s', 'overall_place': '#712', 'category_place': '#254'}

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 87, 87, 87),
        automaticallyImplyLeading: false,
        title: Row(
            children: <Widget>[
              Padding(
              padding: EdgeInsets.only(right: 40),
              child:
                  SizedBox(
                  width: 90,
                  height: 35,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 215, 215, 215)),
                      padding: MaterialStateProperty.all(EdgeInsets.all(5)),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/home');
                    }, child: const Text('Назад', style: TextStyle(fontSize: 20,color: Colors.black))),
                  ),
                ),
              const Text('MARATHON SKILLS 2023', style: TextStyle(fontWeight: FontWeight.w900, fontSize: 30,color: Colors.white)),
              Expanded(
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                  Padding(
                  padding: EdgeInsets.only(right: 40),
                  child:
                      SizedBox(
                      width: 100,
                      height: 35,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 215, 215, 215)),
                          padding: MaterialStateProperty.all(EdgeInsets.all(5)),
                        ),
                        onPressed: () {Navigator.pushNamed(context, '/home');},
                        child: const Text('Logout', style: TextStyle(fontSize: 20,color: Colors.black))
                      ),
                      ),
                  )
                  ]
                )
              )
            ],
          ),
      ),
      body:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(bottom: 40, top: 10),
              child:Text('Мои результаты', style: TextStyle(fontSize: 30,color: Color.fromARGB(255, 92, 92, 92)),),
            ),
            const Text('Это - список всех ваших прошлых результатов гонки Marathon Skills.', style: TextStyle(fontSize: 22,color: Color.fromARGB(255, 87, 87, 87)),textAlign: TextAlign.left),
            const Text('Общее место сравнивает всех бегунов.', style: TextStyle(fontSize: 22,color: Color.fromARGB(255, 87, 87, 87)),textAlign: TextAlign.left),
            const Padding(
              padding: EdgeInsets.only(bottom: 30),
              child: Text('Место по категории сравнивает бегунов одного пола и категории.', style: TextStyle(fontSize: 22,color: Color.fromARGB(255, 87, 87, 87)),textAlign: TextAlign.left),
            ),
            Row( 
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
              Padding(
                padding: EdgeInsets.only(bottom: 20, right: 10),
                child:
                  Text('Пол:', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23,color: Color.fromARGB(255, 53, 53, 53))),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 20, right: 40),
                child:
                  Text('мужской', style: TextStyle(fontSize: 23,color: Color.fromARGB(255, 53, 53, 53))),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 20, right: 10),
                child:
                  Text('Возрастная категория:', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23,color: Color.fromARGB(255, 53, 53, 53))),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 20, right: 40),
                child:
                  Text('18-29', style: TextStyle(fontSize: 23,color: Color.fromARGB(255, 53, 53, 53))),
              )
              ]
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: SingleChildScrollView(
                child: Table(
                  columnWidths: const {
                    0: FixedColumnWidth(200),
                    1: FixedColumnWidth(250),
                    2: FixedColumnWidth(150),
                    3: FixedColumnWidth(150),
                    4: FixedColumnWidth(150),
                  },
                  children: _users.map((user) {
                    return TableRow(children: [
                      Container(
                          padding: const EdgeInsets.all(15),
                          child:_users.indexOf(user) == 0
                              ? Text(user['marathon'], style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20))
                              : Text(user['marathon'])),
                      Container(
                          padding: const EdgeInsets.all(15),
                          child:_users.indexOf(user) == 0
                              ? Text(user['distance'], style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20))
                              : Text(user['distance'])),
                      Container(
                          padding: const EdgeInsets.all(15),
                          child:_users.indexOf(user) == 0
                              ? Text(user['time'], style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20))
                              : Text(user['time'])),
                      Container(
                          padding: const EdgeInsets.all(15),
                          child:_users.indexOf(user) == 0
                              ? Text(user['overall_place'], style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20))
                              : Text(user['overall_place'])),
                      Container(
                          padding: const EdgeInsets.all(15),
                          child:_users.indexOf(user) == 0
                              ? Text(user['category_place'], style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20))
                              : Text(user['category_place'])),
                    ]);
                  }).toList()
                ),
              ),
          )
          ]
        
      ),
    bottomNavigationBar: Container(
      padding: EdgeInsets.all(12),
      height: 50.0,
      color: Color.fromARGB(255, 87, 87, 87),
      child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Text('18 дней, 8 часов и 17 минут до старта марафона!', style: TextStyle(fontSize: 18,color: Colors.white),)
            ],
    ),
    ),
    );
  }
}