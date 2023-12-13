import 'package:flutter/material.dart';

class InventoryScreen extends StatefulWidget {
  const InventoryScreen({super.key});

  @override
  State<InventoryScreen> createState() => _InventoryScreen();
}

class _InventoryScreen extends State<InventoryScreen> {
  final List<Map> _id = [
    {'set': 'Комплект', 'A': 'Тип A', 'B': 'Тип B', 'C': 'Тип C', 'need': 'Необходимо', 'last': 'Остаток'},
    {'set': 'Выбрало данный вариант', 'A': '123', 'B': '123', 'C': '123', 'need': 'Сумма', 'last': 'Остаток'},
  ];
  final List<Map> _content = [
    {'set': 'Номер', 'A': '123', 'B': '123', 'C': '123', 'need': 'Сумма', 'last': 'Остаток'},
    {'set': 'RFID бр-т', 'A': '123', 'B': '123', 'C': '123', 'need': 'Сумма', 'last': 'Остаток'},
    {'set': 'Бейсболка', 'A': 'X', 'B': '123', 'C': '123', 'need': 'Сумма', 'last': 'Остаток'},
    {'set': 'Бут. воды', 'A': 'X', 'B': '123', 'C': '123', 'need': 'Сумма', 'last': 'Остаток'},
    {'set': 'Футболка', 'A': 'X', 'B': 'X', 'C': '123', 'need': 'Сумма', 'last': 'Остаток'},
    {'set': 'Сув. букл.', 'A': 'X', 'B': 'X', 'C': '123', 'need': 'Сумма', 'last': 'Остаток'},
  ];
  final List<Map> _dialog = [
    {'set': 'Наименование','last': 'Остаток', 'need': 'Необходимо','order': 'Надо заказть'},
    {'set': 'Номер','last': '', 'need': '','order': ''},
    {'set': 'RFID бр-т','last': '', 'need': '','order': ''},
    {'set': 'Бейсболка','last': '', 'need': '','order': ''},
    {'set': 'Бут. воды','last': '', 'need': '','order': ''},
    {'set': 'Футболка','last': '', 'need': '','order': ''},
    {'set': 'Сув. букл.','last': '', 'need': '','order': ''},
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
              padding: EdgeInsets.only(bottom: 10, top: 10),
              child:Text('Инвентарь', style: TextStyle(fontSize: 30,color: Color.fromARGB(255, 92, 92, 92)),),
            ),
            Row( 
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              const Padding(
                padding: EdgeInsets.only(top: 20,right: 10),
                child:
                  Text('Всего зарегистрировано бегунов на марафон:', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Color.fromARGB(255, 53, 53, 53))),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20, right: 160),
                child:
                  Text('123', style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 53, 53, 53))),
              ),
              Padding(
                padding: EdgeInsets.only(right: 10),
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
                    onPressed: () {
                    _showDialog(context, 'Точка 1');
                    },
                    child: const Text('Отчет', style: TextStyle(fontSize: 20,color: Colors.black),textAlign: TextAlign.center,)),
                ) 
              ),
              SizedBox(
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
                    onPressed: () { Navigator.pushNamed(context, '/inventory_arrival'); },
                    child: const Text('Поступление', style: TextStyle(fontSize: 20,color: Colors.black),textAlign: TextAlign.center,)),
              ),
              ]
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: SingleChildScrollView(
                child: Table(
                  columnWidths: const {
                    0: FixedColumnWidth(200),
                    1: FixedColumnWidth(150),
                    2: FixedColumnWidth(150),
                    3: FixedColumnWidth(150),
                    4: FixedColumnWidth(150),
                    5: FixedColumnWidth(150)
                  },
                  children: _id.map((id) {
                    return TableRow(children: [
                      Container(
                          color: _id.indexOf(id) == 0
                              ? Color.fromARGB(255, 183, 183, 183)
                              : _id.indexOf(id) % 2 == 0
                              ? Color.fromARGB(255, 205, 205, 205)
                              : Color.fromARGB(255, 227, 227, 227),
                          padding: const EdgeInsets.all(15),
                          child:_id.indexOf(id) == 0
                              ? Text(id['set'], style: TextStyle(fontWeight: FontWeight.bold))
                              : Text(id['set'])),
                      Container(
                          color: _id.indexOf(id) == 0
                              ? Color.fromARGB(255, 183, 183, 183)
                              : _id.indexOf(id) % 2 == 0
                              ? Color.fromARGB(255, 205, 205, 205)
                              : Color.fromARGB(255, 227, 227, 227),
                          padding: const EdgeInsets.all(15),
                          child:_id.indexOf(id) == 0
                              ? Text(id['A'], style: TextStyle(fontWeight: FontWeight.bold))
                              : SizedBox(
                                  width: 50,
                                  height: 30,
                                  child:Text(id['A'])
                                )),
                      Container(
                          color: _id.indexOf(id) == 0
                              ? Color.fromARGB(255, 183, 183, 183)
                              : _id.indexOf(id) % 2 == 0
                              ? Color.fromARGB(255, 205, 205, 205)
                              : Color.fromARGB(255, 227, 227, 227),
                          padding: const EdgeInsets.all(15),
                          child:_id.indexOf(id) == 0
                              ? Text(id['B'], style: TextStyle(fontWeight: FontWeight.bold))
                              : SizedBox(
                                  width: 50,
                                  height: 30,
                                  child:Text(id['B'])
                                )),
                      Container(
                          color: _id.indexOf(id) == 0
                              ? Color.fromARGB(255, 183, 183, 183)
                              : _id.indexOf(id) % 2 == 0
                              ? Color.fromARGB(255, 205, 205, 205)
                              : Color.fromARGB(255, 227, 227, 227),
                          padding: const EdgeInsets.all(15),
                          child:_id.indexOf(id) == 0
                              ? Text(id['C'], style: TextStyle(fontWeight: FontWeight.bold))
                              : SizedBox(
                                  width: 50,
                                  height: 30,
                                  child:Text(id['C'])
                                )),
                      Container(
                          color: _id.indexOf(id) == 0
                              ? Color.fromARGB(255, 183, 183, 183)
                              : _id.indexOf(id) % 2 == 0
                              ? Color.fromARGB(255, 205, 205, 205)
                              : Color.fromARGB(255, 227, 227, 227),
                          padding: const EdgeInsets.all(15),
                          child:_id.indexOf(id) == 0
                              ? Text(id['need'], style: TextStyle(fontWeight: FontWeight.bold))
                              : SizedBox(
                                  width: 50,
                                  height: 30,
                                  child:Text(id['need'])
                                )),
                      Container(
                          color: _id.indexOf(id) == 0
                              ? Color.fromARGB(255, 183, 183, 183)
                              : _id.indexOf(id) % 2 == 0
                              ? Color.fromARGB(255, 205, 205, 205)
                              : Color.fromARGB(255, 227, 227, 227),
                          padding: const EdgeInsets.all(15),
                          child:_id.indexOf(id) == 0
                              ? Text(id['last'], style: TextStyle(fontWeight: FontWeight.bold))
                              : SizedBox(
                                  width: 50,
                                  height: 30,
                                  child:Text(id['last'])
                                ))
                    ]);
                  }).toList(),
                  border: TableBorder.all(width: 2, color: Color.fromARGB(255, 41, 41, 41)),
                ),
              ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 10, top: 10),
            child:Text('Состав комплекта', style: TextStyle(fontSize: 25,color: Color.fromARGB(255, 92, 92, 92)),),
          ),
          Padding(
              padding: const EdgeInsets.all(10),
              child: SingleChildScrollView(
                child: Table(
                  columnWidths: const {
                    0: FixedColumnWidth(200),
                    1: FixedColumnWidth(150),
                    2: FixedColumnWidth(150),
                    3: FixedColumnWidth(150),
                    4: FixedColumnWidth(150),
                    5: FixedColumnWidth(150)
                  },
                  children: _content.map((id) {
                    return TableRow(children: [
                      Container(
                          color: _content.indexOf(id) == 0
                              ? Color.fromARGB(255, 183, 183, 183)
                              : _content.indexOf(id) % 2 == 0
                              ? Color.fromARGB(255, 205, 205, 205)
                              : Color.fromARGB(255, 227, 227, 227),
                          padding: const EdgeInsets.all(15),
                          child:_content.indexOf(id) == 0
                              ? Text(id['set'], style: TextStyle(fontWeight: FontWeight.bold))
                              : Text(id['set'])),
                      Container(
                          color: _content.indexOf(id) == 0
                              ? Color.fromARGB(255, 183, 183, 183)
                              : _content.indexOf(id) % 2 == 0
                              ? Color.fromARGB(255, 205, 205, 205)
                              : Color.fromARGB(255, 227, 227, 227),
                          padding: const EdgeInsets.all(15),
                          child:_content.indexOf(id) == 0
                              ? Text(id['A'], style: TextStyle(fontWeight: FontWeight.bold))
                              : Text(id['A'])),
                      Container(
                          color: _content.indexOf(id) == 0
                              ? Color.fromARGB(255, 183, 183, 183)
                              : _content.indexOf(id) % 2 == 0
                              ? Color.fromARGB(255, 205, 205, 205)
                              : Color.fromARGB(255, 227, 227, 227),
                          padding: const EdgeInsets.all(15),
                          child:_content.indexOf(id) == 0
                              ? Text(id['B'], style: TextStyle(fontWeight: FontWeight.bold))
                              : Text(id['B'])),
                      Container(
                          color: _content.indexOf(id) == 0
                              ? Color.fromARGB(255, 183, 183, 183)
                              : _content.indexOf(id) % 2 == 0
                              ? Color.fromARGB(255, 205, 205, 205)
                              : Color.fromARGB(255, 227, 227, 227),
                          padding: const EdgeInsets.all(15),
                          child:_content.indexOf(id) == 0
                              ? Text(id['C'], style: TextStyle(fontWeight: FontWeight.bold))
                              : Text(id['C'])),
                      Container(
                          color: _content.indexOf(id) == 0
                              ? Color.fromARGB(255, 183, 183, 183)
                              : _content.indexOf(id) % 2 == 0
                              ? Color.fromARGB(255, 205, 205, 205)
                              : Color.fromARGB(255, 227, 227, 227),
                          padding: const EdgeInsets.all(15),
                          child:_content.indexOf(id) == 0
                              ? Text(id['need'], style: TextStyle(fontWeight: FontWeight.bold))
                              : Text(id['need'])),
                      Container(
                          color: _content.indexOf(id) == 0
                              ? Color.fromARGB(255, 183, 183, 183)
                              : _content.indexOf(id) % 2 == 0
                              ? Color.fromARGB(255, 205, 205, 205)
                              : Color.fromARGB(255, 227, 227, 227),
                          padding: const EdgeInsets.all(15),
                          child:_content.indexOf(id) == 0
                              ? Text(id['last'], style: TextStyle(fontWeight: FontWeight.bold))
                              : Text(id['last']))
                    ]);
                  }).toList(),
                  border: TableBorder.all(width: 2, color: Color.fromARGB(255, 41, 41, 41)),
                ),
              ),
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
  void _showDialog(BuildContext context, String pointName) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Отчет', textAlign: TextAlign.center,),
          content: Padding(
            padding: const EdgeInsets.all(10),
            child: SingleChildScrollView(
              child: Table(
                columnWidths: const {
                  0: FixedColumnWidth(200),
                  1: FixedColumnWidth(150),
                  2: FixedColumnWidth(150),
                  3: FixedColumnWidth(150)
                },
                children: _dialog.map((id) {
                  return TableRow(children: [
                    Container(
                        color: _dialog.indexOf(id) == 0
                            ? Color.fromARGB(255, 183, 183, 183)
                            : _dialog.indexOf(id) % 2 == 0
                            ? Color.fromARGB(255, 205, 205, 205)
                            : Color.fromARGB(255, 227, 227, 227),
                        padding: const EdgeInsets.all(15),
                        child:_dialog.indexOf(id) == 0
                            ? Text(id['set'], style: TextStyle(fontWeight: FontWeight.bold))
                            : Text(id['set'])),
                    Container(
                        color: _dialog.indexOf(id) == 0
                            ? Color.fromARGB(255, 183, 183, 183)
                            : _dialog.indexOf(id) % 2 == 0
                            ? Color.fromARGB(255, 205, 205, 205)
                            : Color.fromARGB(255, 227, 227, 227),
                        padding: const EdgeInsets.all(15),
                        child:_dialog.indexOf(id) == 0
                            ? Text(id['last'], style: TextStyle(fontWeight: FontWeight.bold))
                            : Text(id['last'])),
                    Container(
                        color: _dialog.indexOf(id) == 0
                            ? Color.fromARGB(255, 183, 183, 183)
                            : _dialog.indexOf(id) % 2 == 0
                            ? Color.fromARGB(255, 205, 205, 205)
                            : Color.fromARGB(255, 227, 227, 227),
                        padding: const EdgeInsets.all(15),
                        child:_dialog.indexOf(id) == 0
                            ? Text(id['need'], style: TextStyle(fontWeight: FontWeight.bold))
                            : Text(id['need'])),
                    Container(
                        color: _dialog.indexOf(id) == 0
                            ? Color.fromARGB(255, 183, 183, 183)
                            : _dialog.indexOf(id) % 2 == 0
                            ? Color.fromARGB(255, 205, 205, 205)
                            : Color.fromARGB(255, 227, 227, 227),
                        padding: const EdgeInsets.all(15),
                        child:_dialog.indexOf(id) == 0
                            ? Text(id['order'], style: TextStyle(fontWeight: FontWeight.bold))
                            : Text(id['order']))
                  ]);
                }).toList(),
                border: TableBorder.all(width: 2, color: Color.fromARGB(255, 41, 41, 41)),
              ),
            ),
          ),
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.all(10),
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
                  child: const Text('Печать', style: TextStyle(fontSize: 20,color: Colors.black),textAlign: TextAlign.center,)),
              ) 
            ),
          ],
        );
      },
    );
  }
}