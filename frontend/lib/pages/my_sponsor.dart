import 'package:flutter/material.dart';

class MySponsorScreen extends StatefulWidget {
  const MySponsorScreen({super.key});

  @override
  State<MySponsorScreen> createState() => _MySponsorScreen();
}

class _MySponsorScreen extends State<MySponsorScreen> {
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
      body:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(bottom: 40, top: 10),
              child:Text('Мои спонсоры', style: TextStyle(fontSize: 30,color: Color.fromARGB(255, 92, 92, 92)),),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 40),
              child:Text('Здесь показаны все ваши спонсоры в Marathon Skills 2023', style: TextStyle(fontSize: 23,color: Color.fromARGB(255, 59, 59, 59)),),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Padding(padding: EdgeInsets.only(right: 100), child:
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text('Наименование', style: TextStyle(fontSize: 25,color: Color.fromARGB(255, 124, 124, 124))),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child:
                      Text('благотворительной организации', style: TextStyle(fontSize: 25,color: Color.fromARGB(255, 124, 124, 124))),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Color.fromARGB(255, 206, 157, 59), width: 1.5),
                      borderRadius: BorderRadius.all(Radius.circular(100))),
                      width: 170,
                      height: 170,
                    child:ElevatedButton(
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100))
                        ),
                        backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 255, 200, 91)),
                        padding: MaterialStateProperty.all(EdgeInsets.all(10))
                      ),
                        onPressed: () {Null;},
                        child: const Text('Logo', style: TextStyle(fontSize: 25,color: Color.fromARGB(255, 145, 108, 35)))
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 30, right: 30, left: 55),
                    child: SizedBox(width: 450, height: 100, child: Text('Это было бы длинным описанием благотворительности. Это могло пойти для нескольких параграфов.', style: TextStyle(fontSize: 22,color: Color.fromARGB(255, 87, 87, 87)),textAlign: TextAlign.left))
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 30, left: 55),
                    child: SizedBox(width: 450, height: 50, child: Text('Это - больше описания здесь, и это - еще часть описания также.', style: TextStyle(fontSize: 22,color: Color.fromARGB(255, 87, 87, 87)),textAlign: TextAlign.left))
                  )
                ]
              )),
              Column(
                children: <Widget>[
                  Row(
                      children: const [Padding(padding: EdgeInsets.only(right: 150),
                                         child:Text('Спонсор', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25,color: Color.fromARGB(255, 109, 109, 109)))),
                                 Text('Взнос', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25,color: Color.fromARGB(255, 109, 109, 109)))],
                  ),
                  Row( 
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                    Padding(
                        padding: EdgeInsets.only(right: 160, top: 20),
                        child: Text('Наименование', style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 87, 87, 87)))
                          
                    ),
                    Padding(padding: EdgeInsets.only(top: 20),
                                  child: Text('\$50', style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 87, 87, 87)))  
                    )
                    ],
                  ),
                  Row( 
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                    Padding(
                        padding: EdgeInsets.only(right: 150, top: 20),
                        child: Text('Наименование', style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 87, 87, 87)))
                          
                    ),
                    Padding(padding: EdgeInsets.only(top: 20),
                                  child: Text('\$120', style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 87, 87, 87)))  
                    )
                    ],
                  ),
                  Row( 
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                    Padding(
                        padding: EdgeInsets.only(right: 150, top: 20),
                        child: Text('Наименование', style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 87, 87, 87)))
                          
                    ),
                    Padding(padding: EdgeInsets.only(top: 20),
                                  child: Text('\$180', style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 87, 87, 87)))  
                    )
                    ],
                  ),
                  Row( 
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                    Padding(
                        padding: EdgeInsets.only(right: 160, top: 20),
                        child: Text('Наименование', style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 87, 87, 87)))
                          
                    ),
                    Padding(padding: EdgeInsets.only(top: 20),
                                  child: Text('\$30', style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 87, 87, 87)))  
                    )
                    ],
                  ),
                  Row( 
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                    Padding(
                        padding: EdgeInsets.only(right: 150, top: 20),
                        child: Text('Наименование', style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 87, 87, 87)))
                          
                    ),
                    Padding(padding: EdgeInsets.only(top: 20),
                                  child: Text('\$300', style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 87, 87, 87)))  
                    )
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(top: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Color.fromARGB(255, 109, 109, 109), width: 1.5)),
                      width: 340,
                      height: 1,
                  )
                  ),
                  const Padding(
                        padding: EdgeInsets.only(top: 20, left: 210),
                        child: Text('Всего: \$680', style: TextStyle(fontSize: 25,color: Color.fromARGB(255, 87, 87, 87)))
                          
                    ),
                ]
              ),
            ])
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