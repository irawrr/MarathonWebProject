import 'package:flutter/material.dart';

class MarathonInfoScreen extends StatefulWidget {
  const MarathonInfoScreen({super.key});

  @override
  State<MarathonInfoScreen> createState() => _MarathonInfoScreen();
}

class _MarathonInfoScreen extends State<MarathonInfoScreen> {
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
              padding: EdgeInsets.only(bottom: 40),
              child:
                Text('Информация о Marathon Skills 2023', style: TextStyle(fontSize: 30,color: Color.fromARGB(255, 0, 0, 0)),),
            ),
            Row( 
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Padding(
                  padding: EdgeInsets.only(bottom: 30, left: 45),
                  child:
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Color.fromARGB(255, 87, 87, 87), width: 1.5)),
                        width: 350,
                        height: 200,
                      child:ElevatedButton(
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0),
                            ),
                          ),
                          backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 233, 233, 233)),
                          padding: MaterialStateProperty.all(EdgeInsets.all(10))
                        ),
                          onPressed: () {
                            Navigator.pushNamed(context, '/check');
                            }, child: 
                              Column(mainAxisAlignment: MainAxisAlignment.center, children: const [Text('Карта марафона\n', style: TextStyle(fontSize: 33,color: Color.fromARGB(255, 87, 87, 87))),
                                                Text('(Нажмите, чтобы открыть интерактивную карту)', style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 87, 87, 87)),textAlign: TextAlign.center)])
                             ),
                     ),
              ),
              const Padding(
                  padding: EdgeInsets.all(40),
                  child: SizedBox(width: 480, height: 150, child: Text('Информация о Навыках Марафона 2023 пойдет сюда. Информация может покрыть расположение, время, расстояние, рекордные времена и т.д.', style: TextStyle(fontSize: 22,color: Color.fromARGB(255, 87, 87, 87)),textAlign: TextAlign.left)
              ))
              ]),
           Row( 
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Padding(
                  padding: EdgeInsets.only(right: 30),
                  child:
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Color.fromARGB(255, 87, 87, 87), width: 1.5)),
                        width: 160,
                        height: 110,
                        child:ElevatedButton(
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0),
                            ),
                          ),
                          backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 233, 233, 233)),
                          padding: MaterialStateProperty.all(EdgeInsets.all(10))
                        ),
                          onPressed: () {null;}, child: Text('Photo', style: TextStyle(fontSize: 30,color: Color.fromARGB(255, 87, 87, 87))),
                        ),
                     ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Color.fromARGB(255, 87, 87, 87), width: 1.5)),
                  width: 160,
                  height: 110,
                  child:ElevatedButton(
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0),
                            ),
                          ),
                          backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 233, 233, 233)),
                          padding: MaterialStateProperty.all(EdgeInsets.all(10))
                        ),
                          onPressed: () {null;}, child: Text('Photo', style: TextStyle(fontSize: 30,color: Color.fromARGB(255, 87, 87, 87))),
                        ),
              ),
              const Padding(
                  padding: EdgeInsets.only(left: 40),
                  child: SizedBox(width: 480, height: 110, child: Text('Дополнительные сведения. Дополнительные сведения. Дополнительные сведения. Дополнительные сведения. Дополнительные сведения. Дополнительные сведения.', style: TextStyle(fontSize: 22,color: Color.fromARGB(255, 87, 87, 87)),textAlign: TextAlign.left)
              ))
            ]),
            Row( 
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Padding(
                  padding: EdgeInsets.only(right: 30, top: 30),
                  child:
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Color.fromARGB(255, 87, 87, 87), width: 1.5)),
                        width: 160,
                        height: 110,
                      child:ElevatedButton(
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0),
                            ),
                          ),
                          backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 233, 233, 233)),
                          padding: MaterialStateProperty.all(EdgeInsets.all(10))
                        ),
                          onPressed: () {null;}, child: Text('Photo', style: TextStyle(fontSize: 30,color: Color.fromARGB(255, 87, 87, 87))),
                        ),
                     ),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 30), child:
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Color.fromARGB(255, 87, 87, 87), width: 1.5)),
                  width: 160,
                  height: 110,
                  child:ElevatedButton(
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0),
                            ),
                          ),
                          backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 233, 233, 233)),
                          padding: MaterialStateProperty.all(EdgeInsets.all(10))
                        ),
                          onPressed: () {null;}, child: Text('Photo', style: TextStyle(fontSize: 30,color: Color.fromARGB(255, 87, 87, 87))),
                        ),
              ),),
              const Padding(
                  padding: EdgeInsets.only(left: 40),
                  child: SizedBox(width: 480, height: 110, child: Text('Дополнительные сведения. Дополнительные сведения. Дополнительные сведения. Дополнительные сведения. Дополнительные сведения. Дополнительные сведения.', style: TextStyle(fontSize: 22,color: Color.fromARGB(255, 87, 87, 87)),textAlign: TextAlign.left)
              ))
            ],
            ),
          ],
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