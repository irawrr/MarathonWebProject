import 'package:flutter/material.dart';

class AddUser extends StatefulWidget {
  const AddUser({super.key});

  @override
  State<AddUser> createState() => _AddUser();
}

class _AddUser extends State<AddUser> {

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
      Column(children: [
        const Padding(
              padding: EdgeInsets.only(bottom: 50, top: 10),
              child:Text('Добавление нового пользователя', style: TextStyle(fontSize: 30,color: Color.fromARGB(255, 92, 92, 92)),),
            ),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [ 
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row( 
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 10, bottom: 15),
                child: Text('Email:', style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 66, 65, 65)))
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: SizedBox(
                  width: 200,
                  height: 30,
                  child: TextFormField(
                      decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      fillColor: Colors.white,
                      filled: true),
                      validator: (value) {})
                )
              )
            ]
            ),
            Row( 
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 10, bottom: 15),
                child: Text('Имя:', style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 66, 65, 65)))
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: SizedBox(
                  width: 200,
                  height: 30,
                  child: TextFormField(
                      decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      fillColor: Colors.white,
                      filled: true),
                      validator: (value) {})
                )
              )
            ]
            ),
            Row( 
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 10, bottom: 15),
                child: Text('Фамилия:', style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 66, 65, 65)))
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15, right: 40),
                child: SizedBox(
                  width: 200,
                  height: 30,
                  child: TextFormField(
                      decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      fillColor: Colors.white,
                      filled: true),
                      validator: (value) {})
                )
              )
            ]
            ),
            Row( 
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 10, bottom: 5),
                child: Text('Роль:', style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 66, 65, 65)))
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: SizedBox(
                  width: 200,
                  height: 30,
                  child: TextFormField(
                      decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      fillColor: Colors.white,
                      filled: true),
                      validator: (value) {})
                )
              )
            ]
            )
          ]
      ),
      Padding(padding: EdgeInsets.only(left: 200), child:
      Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(bottom: 20),
              child:Text('Новый пароль', style: TextStyle(fontSize: 30,color: Color.fromARGB(255, 92, 92, 92)),),
            ),
            Row( 
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 10, bottom: 15),
                child: Text('Пароль:', style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 66, 65, 65)))
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: SizedBox(
                  width: 200,
                  height: 30,
                  child: TextFormField(
                      decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      fillColor: Colors.white,
                      filled: true),
                      validator: (value) {})
                )
              )
            ]
            ),
            Row( 
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 10, bottom: 70),
                child: Text('Повтор пароля:', style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 66, 65, 65)))
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 70, right: 70),
                child: SizedBox(
                  width: 200,
                  height: 30,
                  child: TextFormField(
                      decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      fillColor: Colors.white,
                      filled: true),
                      validator: (value) {})
                )
              )
              ]
            )
          ]
          )),
        ]
        ),
        Row( mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 20, top: 40),
              child:
                  SizedBox(
                  width: 150,
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
                    }, child: const Text('Сохранить', style: TextStyle(fontSize: 20,color: Colors.black))),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 40), child:
                SizedBox(
                  width: 150,
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
                    }, child: const Text('Отмена', style: TextStyle(fontSize: 20,color: Colors.black))),
                  ),
                ),
          ],
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