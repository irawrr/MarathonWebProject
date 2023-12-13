import 'package:flutter/material.dart';

class InventoryArrival extends StatefulWidget {
  const InventoryArrival({super.key});

  @override
  State<InventoryArrival> createState() => _InventoryArrival();
}

class _InventoryArrival extends State<InventoryArrival> {
  final List<Map> _users = [
    {'name': 'Наименование', 'arrival': 'Поступление'},
    {'name': 'Номер бегуна', 'arrival': ''},
    {'name': 'RFID браслет', 'arrival': ''},
    {'name': 'Бейсболка', 'arrival': ''},
    {'name': 'Бутылка воды', 'arrival': ''},
    {'name': 'Футболка', 'arrival': ''},
    {'name': 'Сувенирный буклет', 'arrival': ''},


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
              padding: EdgeInsets.only(bottom: 30, top: 10),
              child:Center(
                child: Text('Поступление инвентаря', style: TextStyle(fontSize: 30,color: Color.fromARGB(255, 92, 92, 92))),
              )
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: SingleChildScrollView(
                child: Table(
                  columnWidths: const {
                    0: FixedColumnWidth(200),
                    1: FixedColumnWidth(200)
                  },
                  children: _users.map((user) {
                    return TableRow(children: [
                      Container(
                          color: _users.indexOf(user) == 0
                              ? Color.fromARGB(255, 183, 183, 183)
                              : _users.indexOf(user) % 2 == 0
                              ? Color.fromARGB(255, 205, 205, 205)
                              : Color.fromARGB(255, 227, 227, 227),
                          padding: const EdgeInsets.all(15),
                          child:_users.indexOf(user) == 0
                              ? Text(user['name'].toString(), style: TextStyle(fontWeight: FontWeight.bold))
                              : Text(user['name'].toString())),
                      Container(
                          color: _users.indexOf(user) == 0
                              ? Color.fromARGB(255, 183, 183, 183)
                              : _users.indexOf(user) % 2 == 0
                              ? Color.fromARGB(255, 205, 205, 205)
                              : Color.fromARGB(255, 227, 227, 227),
                          padding: const EdgeInsets.all(15),
                          child: _users.indexOf(user) == 0
                              ? Text(user['arrival'], style: TextStyle(fontWeight: FontWeight.bold))
                              : Text(user['arrival'])),
                    ]);
                  }).toList(),
                  border: TableBorder.all(width: 2, color: Color.fromARGB(255, 41, 41, 41)),
                ),
              ),
          ),
          Padding(
                padding: EdgeInsets.only(top: 30),
                child: SizedBox(
                  width: 150,
                  height: 40,
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
                    onPressed: () {},
                    child: const Text('Сохранить', style: TextStyle(fontSize: 20,color: Colors.black),textAlign: TextAlign.center,)),
                ) 
              ),
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