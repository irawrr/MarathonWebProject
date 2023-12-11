import 'package:flutter/material.dart';

class RunnerSponsorScreen extends StatefulWidget {
  const RunnerSponsorScreen({super.key});

  @override
  State<RunnerSponsorScreen> createState() => _RunnerSponsorScreen();
}

class _RunnerSponsorScreen extends State<RunnerSponsorScreen> {
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
              child:Text('Спонсор бегуна', style: TextStyle(fontSize: 30,color: Color.fromARGB(255, 92, 92, 92)),),
            ),
            const Padding(
                    padding: EdgeInsets.only(bottom: 30),
                    child: SizedBox(width: 830, height: 80, child: Text('Пожалуйста выберете бегуна, которого вы хотели бы спонсировать и сумму, которую вы хотели бы пожертвовать. Спасибо за вашу поддержку бегунов и их благотворительных учреждний.', style: TextStyle(fontSize: 22,color: Color.fromARGB(255, 57, 57, 57)),textAlign: TextAlign.center))
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Padding(padding: EdgeInsets.only(right: 100), child:
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.only(bottom: 25),
                    child:
                      Text('Информация о Спонсоре', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28,color: Color.fromARGB(255, 136, 136, 136))),
                  ),
                  Row( 
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                    const Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Text('Ваше имя:', style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 87, 87, 87)))
                    ),
                    SizedBox(
                      width: 300,
                      child: TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty || double.tryParse(value) == null) {return '!';}
                          return null;
                        }
                      )
                    )
                    ]
                  ),
                  Row( 
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                    const Padding(
                        padding: EdgeInsets.only(right: 20, left: 40),
                        child: Text('Бегун:', style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 87, 87, 87)))
                    ),
                    SizedBox(
                      width: 300,
                      child: TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty || double.tryParse(value) == null) {return '!';}
                          return null;
                        }
                      )
                    )
                    ]
                  ),
                  Row( 
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                    const Padding(
                        padding: EdgeInsets.only(right: 20, left: 40),
                        child: Text('Карта:', style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 87, 87, 87)))
                    ),
                    SizedBox(
                      width: 300,
                      child: TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty || double.tryParse(value) == null) {return '!';}
                          return null;
                        }
                      )
                    )
                    ]
                  ),
                  Row( 
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                    const Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Text('Номер карты:', style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 87, 87, 87)))
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 25),
                      child: SizedBox(
                        width: 300,
                        child: TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty || double.tryParse(value) == null) {return '!';}
                            return null;
                          }
                        )
                      )
                    )
                    ]
                  ),
                  Row( 
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                    const Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Text('Срок действия:', style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 87, 87, 87)))
                    ),
                    SizedBox(
                      width: 40,
                      child: TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty || double.tryParse(value) == null) {return '!';}
                          return null;
                        }
                      )
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 25, right: 215),
                      child: SizedBox(
                        width: 60,
                        child: TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty || double.tryParse(value) == null) {return '!';}
                            return null;
                          }
                        )
                      )
                    )
                    ]
                  ),
                  Row( 
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                    const Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Text('CVC:', style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 87, 87, 87)))
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 180),
                      child: SizedBox(
                        width: 60,
                        child: TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty || double.tryParse(value) == null) {return '!';}
                            return null;
                          }
                        )
                      )
                    )
                    ]
                  ),
                ]
              )),
              Column(
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.only(bottom: 25),
                    child:
                      Text('Благотворительность', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28,color: Color.fromARGB(255, 136, 136, 136))),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 25),
                    child:
                      Text('Фонд Кошек', style: TextStyle(fontSize: 23,color: Color.fromARGB(255, 43, 43, 43))),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child:
                      Text('Сумма пожертвования', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26,color: Color.fromARGB(255, 136, 136, 136))),
                  ),
                  const Padding(padding: EdgeInsets.only(bottom: 20),
                                  child: Text('\$50', style: TextStyle(fontSize: 60,color: Color.fromARGB(255, 136, 136, 136)))  
                  ),
                  Row( 
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 50,
                        height: 35,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 222, 222, 222)),
                            padding: MaterialStateProperty.all(EdgeInsets.all(5)),
                          ),
                          onPressed: () {}, child:  Text('-', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30,color: Colors.black))),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 20, left: 20),
                        child: SizedBox(
                          width: 80,
                          child: TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty || double.tryParse(value) == null) {return '!';}
                              return null;
                            }
                          )
                        )
                      ),
                      SizedBox(
                        width: 50,
                        height: 35,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 222, 222, 222)),
                            padding: MaterialStateProperty.all(EdgeInsets.all(5)),
                          ),
                          onPressed: () {}, child:  Text('+', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.black))),
                      ),
                    ]
                  ),
                  Row( 
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 20, top: 20),
                        child: SizedBox(
                          width: 120,
                          height: 35,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 222, 222, 222)),
                              padding: MaterialStateProperty.all(EdgeInsets.all(5)),
                            ),
                            onPressed: () {}, child:  Text('Заплатить', style: TextStyle(fontSize: 20,color: Colors.black))),
                        )
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: SizedBox(
                          width: 120,
                          height: 35,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 222, 222, 222)),
                              padding: MaterialStateProperty.all(EdgeInsets.all(5)),
                            ),
                            onPressed: () {}, child:  Text('Отмена', style: TextStyle(fontSize: 20,color: Colors.black))),
                        )
                      )
                    ]
                  )
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
class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});

  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class MyCustomFormState extends State<MyCustomForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: ElevatedButton(
              onPressed: () {
                // Validate returns true if the form is valid, or false otherwise.
                if (_formKey.currentState!.validate()) {
                  // If the form is valid, display a snackbar. In the real world,
                  // you'd often call a server or save the information in a database.
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Processing Data')),
                  );
                }
              },
              child: const Text('Submit'),
            ),
          ),
        ],
      ),
    );
  }
}