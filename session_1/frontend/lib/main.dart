import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Marathon Skills 2016',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const MyHomePage(title: 'MARATHON SKILLS 2016'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 87, 87, 87),
        toolbarHeight: 150,
        centerTitle: true,
        title: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(widget.title, style: TextStyle(fontWeight: FontWeight.w900, fontSize: 40,color: Colors.white),),
              const Text('Москва, Россия', style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 186, 186, 186)),),
              const Text('среда, 21 октября 2016', style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 188, 188, 188)),)
            ],
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(bottom: 15),
              child:
                SizedBox(
                  width: 370,
                  height: 70,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 215, 215, 215)),
                      padding: MaterialStateProperty.all(EdgeInsets.all(5)),
                      textStyle: MaterialStateProperty.all(TextStyle(fontSize: 20))
                    ),
                      onPressed: () {}, child: Text('Я хочу стать бегуном')),
                ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 15),
              child:
                SizedBox(
                  width: 370,
                  height: 70,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 215, 215, 215)),
                      padding: MaterialStateProperty.all(EdgeInsets.all(5)),
                      textStyle: MaterialStateProperty.all(TextStyle(fontSize: 20))
                    ),
                      onPressed: () {}, child: Text('Я хочу стать спонсором бегуна')),
                ),
            ),
            SizedBox(
              width: 370,
              height: 70,
              child: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 215, 215, 215)),
                  padding: MaterialStateProperty.all(EdgeInsets.all(5)),
                  textStyle: MaterialStateProperty.all(TextStyle(fontSize: 20))
                ),
                onPressed: () {}, child: Text('Я хочу узнать больше о событии')),
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
            children: <Widget>[
              Text('18 дней, 8 часов и 17 минут до старта марафона!', style: TextStyle(fontSize: 18,color: Colors.white),),
              Padding(
              padding: EdgeInsets.only(left: 50),
              child:
                SizedBox(
                  width: 150,
                  height: 200,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 215, 215, 215)),
                      padding: MaterialStateProperty.all(EdgeInsets.all(5)),
                      textStyle: MaterialStateProperty.all(TextStyle(fontSize: 20))
                    ),
                      onPressed: () {}, child: Text('Login')),
                ),
            ),
            ],
    ),
    ),
    );
  }
}
