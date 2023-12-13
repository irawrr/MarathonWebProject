import 'package:flutter/material.dart';

class ControlRunners extends StatefulWidget {
  const ControlRunners({super.key});

  @override
  State<ControlRunners> createState() => _ControlRunners();
}

class _ControlRunners extends State<ControlRunners> {
  final List<Map> _users = [
    {'name': 'Имя', 'last_name': 'Фамилия', 'email': 'Email', 'status': 'Статус', 'space': ''},
    {'name': 'First', 'last_name': 'Runner', 'email': 'first@runner.com', 'status': 'Оплата подтверждена', 'space': ''},
    {'name': 'Second', 'last_name': 'Runner', 'email': 'second@runner.com', 'status': 'Оплата подтверждена', 'space': ''},
    {'name': 'Third', 'last_name': 'Runner', 'email': 'third@runner.com', 'status': 'Оплата подтверждена', 'space': ''},
    {'name': 'Fourth', 'last_name': 'Runner', 'email': 'fourth@runner.com', 'status': 'Оплата подтверждена', 'space': ''},

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
              child:Text('Управление бегунами', style: TextStyle(fontSize: 30,color: Color.fromARGB(255, 92, 92, 92)),),
            ),
            Row( 
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
              Padding(
                padding: EdgeInsets.only(bottom: 10, right: 300),
                child: Text('Сортировка и фильтрация', style: TextStyle(fontSize: 22,color: Color.fromARGB(255, 87, 87, 87)),textAlign: TextAlign.left),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10, right: 150),
                child: Text('Выгрузка', style: TextStyle(fontSize: 22,color: Color.fromARGB(255, 87, 87, 87)),textAlign: TextAlign.left),
              ),
              ]
            ),
            Row( 
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 20, bottom: 5),
                child: Text('Статус:', style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 87, 87, 87)))
              ),
              Padding(
                  padding: EdgeInsets.only(right: 270, bottom: 5),
                  child:SizedBox(
                    width: 150,
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty || double.tryParse(value) == null) {return '!';}
                        return null;
                      }
                    )
                  )
              ),
              Padding(
                  padding: EdgeInsets.only(right: 80, bottom: 5),
                  child: SizedBox(
                    width: 200,
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
                      child: const Text('Детальной информации\n (CSV)', style: TextStyle(fontSize: 15,color: Colors.black),textAlign: TextAlign.center,)),
                  ) 
              )
            ]
            ),
            Row( 
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 20),
                child: Text('Дистанция:', style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 87, 87, 87)))
              ),
              Padding(
                  padding: EdgeInsets.only(right: 270),
                  child:SizedBox(
                    width: 150,
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty || double.tryParse(value) == null) {return '!';}
                        return null;
                      }
                    )
                  )
              ),
              Padding(
                  padding: EdgeInsets.only(right: 120),
                  child: SizedBox(
                    width: 200,
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
                      child: const Text('E-mail список', style: TextStyle(fontSize: 15,color: Colors.black),textAlign: TextAlign.center,)),
                  ) 
              )
            ]
            ),
            Row( 
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 20, bottom: 5),
                child: Text('Сортировать:', style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 87, 87, 87)))
              ),
              Padding(
                  padding: EdgeInsets.only(right: 10, bottom: 5),
                  child:SizedBox(
                    width: 150,
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty || double.tryParse(value) == null) {return '!';}
                        return null;
                      }
                    )
                  )
              ),
              Padding(
                  padding: EdgeInsets.only(right: 500, bottom: 5),
                  child: SizedBox(
                    width: 100,
                    height: 30,
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
                      child: const Text('Обновить', style: TextStyle(fontSize: 15,color: Colors.black),textAlign: TextAlign.center,)),
                  ) 
              )
            ]
            ),
            Row( 
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
              Padding(
                padding: EdgeInsets.only(top: 20,right: 10),
                child:
                  Text('Total runners:', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Color.fromARGB(255, 53, 53, 53))),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child:
                  Text('123', style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 53, 53, 53))),
              )
              ]
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: SingleChildScrollView(
                child: Table(
                  columnWidths: const {
                    0: FixedColumnWidth(200),
                    1: FixedColumnWidth(200),
                    2: FixedColumnWidth(200),
                    3: FixedColumnWidth(200),
                    4: FixedColumnWidth(100),
                  },
                  children: _users.map((user) {
                    return TableRow(children: [
                      Container(
                          color: _users.indexOf(user) == 0
                              ? Color.fromARGB(255, 147, 147, 147)
                              : _users.indexOf(user) % 2 == 0
                              ? Color.fromARGB(255, 183, 183, 183)
                              : Color.fromARGB(255, 205, 205, 205),
                          padding: const EdgeInsets.all(15),
                          child:_users.indexOf(user) == 0
                              ? Text(user['name'].toString(), style: TextStyle(fontWeight: FontWeight.bold))
                              : Text(user['name'].toString())),
                      Container(
                          color: _users.indexOf(user) == 0
                              ? Color.fromARGB(255, 147, 147, 147)
                              : _users.indexOf(user) % 2 == 0
                              ? Color.fromARGB(255, 183, 183, 183)
                              : Color.fromARGB(255, 205, 205, 205),
                          padding: const EdgeInsets.all(15),
                          child: _users.indexOf(user) == 0
                              ? Text(user['last_name'], style: TextStyle(fontWeight: FontWeight.bold))
                              : Text(user['last_name'])),
                      Container(
                          color: _users.indexOf(user) == 0
                              ? Color.fromARGB(255, 147, 147, 147)
                              : _users.indexOf(user) % 2 == 0
                              ? Color.fromARGB(255, 183, 183, 183)
                              : Color.fromARGB(255, 205, 205, 205),
                          padding: const EdgeInsets.all(15),
                          child: _users.indexOf(user) == 0
                              ? Text(user['email'], style: TextStyle(fontWeight: FontWeight.bold))
                              : Text(user['email'])),
                      Container(
                          color: _users.indexOf(user) == 0
                              ? Color.fromARGB(255, 147, 147, 147)
                              : _users.indexOf(user) % 2 == 0
                              ? Color.fromARGB(255, 183, 183, 183)
                              : Color.fromARGB(255, 205, 205, 205),
                          padding: const EdgeInsets.all(15),
                          child: _users.indexOf(user) == 0
                              ? Text(user['status'], style: TextStyle(fontWeight: FontWeight.bold))
                              : Text(user['status'])),
                      Container(
                          color: _users.indexOf(user) == 0
                              ? Color.fromARGB(255, 147, 147, 147)
                              : _users.indexOf(user) % 2 == 0
                              ? Color.fromARGB(255, 183, 183, 183)
                              : Color.fromARGB(255, 205, 205, 205),
                          padding: const EdgeInsets.all(8),
                          child: _users.indexOf(user) == 0
                              ? SizedBox(
                                  width: 50,
                                  height: 30
                                )
                              : SizedBox(
                                  width: 50,
                                  height: 30,
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
                                    child: const Text('edit', style: TextStyle(fontSize: 20,color: Colors.black)))
                                )
                      )
                    ]);
                  }).toList(),
                  border: TableBorder.all(width: 2, color: Color.fromARGB(255, 41, 41, 41)),
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