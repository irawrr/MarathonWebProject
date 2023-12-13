import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:string_validator/string_validator.dart';

class CertificateScreen extends StatefulWidget {
  const CertificateScreen({super.key});

  @override
  State<CertificateScreen> createState() => _CertificateScreen();
}

class _CertificateScreen extends State<CertificateScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 87, 87, 87),
        automaticallyImplyLeading: false,
        title: Row(
            children: <Widget>[
              Padding(
              padding: const EdgeInsets.only(right: 40),
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
                      backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 215, 215, 215)),
                      padding: MaterialStateProperty.all(const EdgeInsets.all(5)),
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
                  padding: const EdgeInsets.only(right: 40),
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
                          backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 215, 215, 215)),
                          padding: MaterialStateProperty.all(const EdgeInsets.all(5)),
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
          children: <Widget>[
            Container(
              alignment: Alignment.topCenter,
              width: double.infinity,
              height: 45,
              decoration: const BoxDecoration(color: Color.fromARGB(255, 188, 188, 188)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [ 
                  const Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Text('Race event:', style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 59, 59, 59)),textAlign: TextAlign.center)
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 6),
                    child: SizedBox(
                      width: 150,
                      height: 30,
                      child: TextFormField(
                          decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          fillColor: Colors.white,
                          filled: true),
                          validator: (value) {})
                    )
                  ),
                ]
              )
            ),
            Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  alignment: Alignment.center,
                  width: 350,
                  height: 100,
                  decoration: 
                  BoxDecoration(
                    color: const Color.fromARGB(255, 255, 185, 56),
                    border: Border.all(color: const Color.fromARGB(255, 156, 107, 16)),
                  ),
                  child: const Text('Logo', style: TextStyle(fontSize: 30,color: Color.fromARGB(255, 156, 107, 16)))
                )
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text('Поздравляем Имя Фамилия с участием в 42км полном марафоне.', style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 81, 81, 81)),textAlign: TextAlign.center)
            ),
            const Text('Ваши результаты: время 4:13:42 и занятое место 183!', style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 81, 81, 81)),textAlign: TextAlign.center),
            const Padding(
              padding: EdgeInsets.only(top: 30, bottom: 10),
              child: Text('Сертификат участника', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50,color: Color.fromARGB(255, 92, 92, 92)),textAlign: TextAlign.center)
            ),
            const Text('в', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30,color: Color.fromARGB(255, 81, 81, 81)),textAlign: TextAlign.center),
            const Padding(
              padding: EdgeInsets.only(top: 10, bottom: 20),
              child: Text('Marathon Skills 2023', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 45,color: Color.fromARGB(255, 92, 92, 92)),textAlign: TextAlign.center)
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [ Padding(
                padding: EdgeInsets.only(left: 350, bottom: 20),
                child: Text('Osaka, Japan', style: TextStyle(fontSize: 40,color: Color.fromARGB(255, 92, 92, 92)),textAlign: TextAlign.center)
              ),
              Padding(
                padding: EdgeInsets.only(left: 250),
                child: Icon(
                  Icons.check_circle_outline,
                  color: Colors.green,
                  size: 100.0,
                )
              ),
              ]
            ),
            Text('Вы также заработали \$1,300 для вашей благотворительной организации!', style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 81, 81, 81)),textAlign: TextAlign.center),
          ]
      ),
      
    bottomNavigationBar: Container(
      padding: const EdgeInsets.all(12),
      height: 50.0,
      color: const Color.fromARGB(255, 87, 87, 87),
      child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Text('18 дней, 8 часов и 17 минут до старта марафона!', style: TextStyle(fontSize: 18,color: Colors.white))
            ],
    ),
    ),
    );
  }
}