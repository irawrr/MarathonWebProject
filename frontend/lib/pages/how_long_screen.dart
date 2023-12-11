import 'package:flutter/material.dart';

class HowLongScreen extends StatefulWidget {
  const HowLongScreen({super.key});

  @override
  State<HowLongScreen> createState() => _HowLongScreen();
}

class _HowLongScreen extends State<HowLongScreen> {
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
              const Text('MARATHON SKILLS 2023', style: TextStyle(fontWeight: FontWeight.w900, fontSize: 30,color: Colors.white),),
            ],
          ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(bottom: 50),
              child:Text('Насколько долгий марафон?', style: TextStyle(fontSize: 30,color: Color.fromARGB(255, 0, 0, 0)),),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Padding(padding: EdgeInsets.only(right: 40), child:
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.only(bottom: 40),
                    child:
                      Text('Имя выбранного пункта', style: TextStyle(fontSize: 30,color: Color.fromARGB(255, 87, 87, 87)),),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Color.fromARGB(255, 87, 87, 87), width: 1.5)),
                      width: 350,
                      height: 200,
                    child:ElevatedButton(
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0))
                        ),
                        backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 233, 233, 233)),
                        padding: MaterialStateProperty.all(EdgeInsets.all(10))
                      ),
                        onPressed: () {Navigator.pushNamed(context, '/check');},
                        child: const Text('Выбранное photo', style: TextStyle(fontSize: 25,color: Color.fromARGB(255, 87, 87, 87)))
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 30, right: 30),
                    child: SizedBox(width: 450, height: 150, child: Text('Информация о скорости выбранного пункта и сколько времени это взяло бы, чтобы закончить марафон.', style: TextStyle(fontSize: 22,color: Color.fromARGB(255, 87, 87, 87)),textAlign: TextAlign.center)
                  ))
                ]
              )),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(children: const [Padding(padding: EdgeInsets.only(right: 45, left: 10),
                                         child:Text('Скорость', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Color.fromARGB(255, 87, 87, 87)))),
                                 Text('Дистанция', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Color.fromARGB(255, 87, 87, 87)))],
                  ),
                  Row( 
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                    Padding(
                        padding: const EdgeInsets.only(right: 40, top: 20),
                        child:
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: const Color.fromARGB(255, 150, 150, 150), width: 1.5)),
                              width: 100,
                              height: 70,
                            child:ElevatedButton(
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(0),
                                  ),
                                ),
                                backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 233, 233, 233))
                              ),
                                onPressed: () {null;}, child: const Text('Photo 1', style: TextStyle(fontSize: 18,color: Color.fromARGB(255, 87, 87, 87))),
                            ),
                          ),
                    ),
                    const Padding(padding: EdgeInsets.only(top: 20),
                                  child: Text('Название 1', style: TextStyle(fontSize: 18,color: Color.fromARGB(255, 87, 87, 87)))  
                    )
                    ],
                  ),
                  Row( 
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                    Padding(
                        padding: const EdgeInsets.only(right: 40, top: 15),
                        child:
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: const Color.fromARGB(255, 150, 150, 150), width: 1.5)),
                              width: 100,
                              height: 70,
                            child:ElevatedButton(
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(0),
                                  ),
                                ),
                                backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 233, 233, 233))
                              ),
                                onPressed: () {null;}, child: const Text('Photo 2', style: TextStyle(fontSize: 18,color: Color.fromARGB(255, 87, 87, 87))),
                            ),
                          ),
                    ),
                    const Padding(padding: EdgeInsets.only(top: 15),
                                  child: Text('Название 2', style: TextStyle(fontSize: 18,color: Color.fromARGB(255, 87, 87, 87)))  
                    )
                    ],
                  ),
                  Row( 
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                    Padding(
                        padding: const EdgeInsets.only(right: 40, top: 15),
                        child:
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: const Color.fromARGB(255, 150, 150, 150), width: 1.5)),
                              width: 100,
                              height: 70,
                            child:ElevatedButton(
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(0),
                                  ),
                                ),
                                backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 233, 233, 233))
                              ),
                                onPressed: () {null;}, child: const Text('Photo 3', style: TextStyle(fontSize: 18,color: Color.fromARGB(255, 87, 87, 87))),
                            ),
                          ),
                    ),
                    const Padding(padding: EdgeInsets.only(top: 15),
                                  child: Text('Название 3', style: TextStyle(fontSize: 18,color: Color.fromARGB(255, 87, 87, 87)))  
                    )
                    ],
                  ),
                  Row( 
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                    Padding(
                        padding: const EdgeInsets.only(right: 40, top: 15),
                        child:
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: const Color.fromARGB(255, 150, 150, 150), width: 1.5)),
                              width: 100,
                              height: 70,
                            child:ElevatedButton(
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(0),
                                  ),
                                ),
                                backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 233, 233, 233))
                              ),
                                onPressed: () {null;}, child: const Text('Photo 4', style: TextStyle(fontSize: 18,color: Color.fromARGB(255, 87, 87, 87))),
                            ),
                          ),
                    ),
                    const Padding(padding: EdgeInsets.only(top: 15),
                                  child: Text('Название 4', style: TextStyle(fontSize: 18,color: Color.fromARGB(255, 87, 87, 87)))  
                    )
                    ],
                  ),
                  Row( 
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                    Padding(
                        padding: const EdgeInsets.only(right: 40, top: 15),
                        child:
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: const Color.fromARGB(255, 150, 150, 150), width: 1.5)),
                              width: 100,
                              height: 70,
                            child:ElevatedButton(
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(0),
                                  ),
                                ),
                                backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 233, 233, 233))
                              ),
                                onPressed: () {null;}, child: const Text('Photo 5', style: TextStyle(fontSize: 18,color: Color.fromARGB(255, 87, 87, 87))),
                            ),
                          ),
                    ),
                    const Padding(padding: EdgeInsets.only(top: 15),
                                  child: Text('Название 5', style: TextStyle(fontSize: 18,color: Color.fromARGB(255, 87, 87, 87)))  
                    )
                    ],
                  ),
                ]
              ),
            ])
          ]
        ),
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