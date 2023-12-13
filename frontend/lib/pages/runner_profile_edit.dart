import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:string_validator/string_validator.dart';

class RunnerProfileEditHomeScreen extends StatelessWidget {
  const RunnerProfileEditHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PageState(),
      child: const RunnerProfileEditScreen(),
    );
  }
}

class PageState extends ChangeNotifier {
  var pfpPath = "";
  var curGender = "";
  var curCountry = "";

  void updatePfp(value){
    pfpPath = value;
    notifyListeners();
  }

  void updateDropdownMenuValue(value){
    if (EditProfileFormsState.genderList.contains(value)) {
      curGender = value;
    }
    else if (EditProfileFormsState.countryList.contains(value)) {
      curCountry = value;
    }
    notifyListeners();
  }
  void updateCountry(value){
    curCountry = value;
    notifyListeners();
  }

  void resetPfp() {
    pfpPath = "";
    notifyListeners();
  }

  void resetDropdownMenus() {
    curGender = "";
    curCountry = "";
    notifyListeners();
  }
}


class RunnerProfileEditScreen extends StatefulWidget {
  const RunnerProfileEditScreen({super.key});

  @override
  State<RunnerProfileEditScreen> createState() => RunnerProfileEditScreenState();
}

class RunnerProfileEditScreenState extends State<RunnerProfileEditScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 120,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/runner_menu');
            },
            style: ButtonStyle(
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              backgroundColor: MaterialStateProperty.all(const Color.fromRGBO(204, 204, 204, 1)),
              padding: MaterialStateProperty.all(const EdgeInsets.all(5)),
            ),
            child: const Text(
                'Назад',
                style: TextStyle(color: Colors.black, fontSize: 18)
            ),
          ),
        ),
        title: const Text(
          "MARATHON SKILLS 2023",
          style: TextStyle(fontWeight: FontWeight.w900, fontSize: 30, color: Colors.white,),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
              style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  backgroundColor: MaterialStateProperty.all(const Color.fromRGBO(204, 204, 204, 1)),
                  padding: MaterialStateProperty.all(const EdgeInsets.all(5)),
                  fixedSize: MaterialStateProperty.all(const Size.fromWidth(120))
              ),
              child: const Text(
                  'Log out',
                  style: TextStyle(color: Colors.black, fontSize: 18)
              ),
            ),
          ),
        ],
        backgroundColor: const Color.fromRGBO(82, 82, 82, 1),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Редактирование профиля',
              style: TextStyle(fontSize: 30, color: Color.fromRGBO(91, 91, 91, 1)),
            ),
            EditProfileForms(),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(12),
        height: 50.0,
        color: const Color.fromRGBO(82, 82, 82, 1),
        child: Text(
            'тут будет таймер',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18, color: Colors.white)
        ),
      ),
    );
  }
}


class EditProfileForms extends StatefulWidget {
  const EditProfileForms({super.key});

  @override
  EditProfileFormsState createState() => EditProfileFormsState();
}

class EditProfileFormsState extends State<EditProfileForms> {
  final _formKey = GlobalKey<FormState>();

  final _pwController = TextEditingController();
  final _pwRepeatController = TextEditingController();
  final _birthController = TextEditingController();
  final _nameController = TextEditingController();
  final _surnameController = TextEditingController();

  static final genderList = ['male', 'female'];
  static final countryList = ['country1', 'country2', 'country3']; //заменить на данные бд

  @override
  Widget build(BuildContext context) {
    var pageState = context.watch<PageState>();

    return Form(
      key: _formKey,
      child: Center(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IntrinsicHeight (
                    child: Row(
                      mainAxisSize:MainAxisSize.min,
                      children: [
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget> [
                            Text ("Email:", style: TextStyle(fontSize: 16, color: Colors.black),),
                            Text ("Имя:", style: TextStyle(fontSize: 16, color: Colors.black),),
                            Text ("Фамилия:", style: TextStyle(fontSize: 16, color: Colors.black),),
                            Text ("Пол:", style: TextStyle(fontSize: 16, color: Colors.black),),
                            Text ("Дата рождения:", style: TextStyle(fontSize: 16, color: Colors.black),),
                            Text ("Страна:", style: TextStyle(fontSize: 16, color: Colors.black),),
                          ],
                        ),
                        const SizedBox(width: 10,),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.symmetric(vertical: 5.0),
                              child: SizedBox(
                                width: 180,
                                height: 20,
                                child: Text("suschenkoaa@mail.ru",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Color.fromRGBO(150, 150, 150, 1),
                                      fontStyle: FontStyle.italic,
                                  )),
                              ),
                            ), //email
                            const SizedBox(height: 5),
                            Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: SizedBox(
                                width: 150,
                                child: TextFormField(
                                  controller: _nameController,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      //здесь прописать, что не нужно добавлять в бд
                                      return null;
                                    }
                                    return null;
                                  },
                                  decoration: const InputDecoration(
                                      hintText: "Имя",
                                      hintStyle: TextStyle(fontStyle: FontStyle.italic),
                                      isDense: true,
                                      contentPadding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                                      border: OutlineInputBorder(),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(width: 1.0, color: Color.fromRGBO(150, 150, 150, 1)),
                                      )
                                  ),
                                  style: const TextStyle(fontSize: 16),
                                ),
                              ),
                            ), //name
                            const SizedBox(height: 5),
                            Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: SizedBox(
                                width: 150,
                                child: TextFormField(
                                  controller: _surnameController,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      //здесь прописать, что не нужно добавлять в бд
                                      return null;
                                    }
                                    return null;
                                  },
                                  decoration: const InputDecoration(
                                      hintText: "Фамилия",
                                      hintStyle: TextStyle(fontStyle: FontStyle.italic),
                                      isDense: true,
                                      contentPadding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                                      border: OutlineInputBorder(),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(width: 1.0, color: Color.fromRGBO(150, 150, 150, 1)),
                                      )
                                  ),
                                  style: const TextStyle(fontSize: 16),
                                ),
                              ),
                            ), //surn
                            const SizedBox(height: 5),
                            RegDropdownMenu(list: genderList,),
                            const SizedBox(height: 5),
                            Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: SizedBox(
                                width: 150,
                                child: TextFormField(
                                  controller: _birthController,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      //здесь прописать, что не нужно добавлять в бд
                                      return null;
                                    } else if (!isDate(value)) {
                                      return 'Неверный ввод';
                                    }
                                    return null;
                                  },
                                  decoration: const InputDecoration(
                                      hintText: "1797-08-30",
                                      hintStyle: TextStyle(fontStyle: FontStyle.italic),
                                      isDense: true,
                                      contentPadding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                                      border: OutlineInputBorder(),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(width: 1.0, color: Color.fromRGBO(150, 150, 150, 1)),
                                      )
                                  ),
                                  style: const TextStyle(fontSize: 16),
                                ),
                              ),
                            ),
                            const SizedBox(height: 5),
                            RegDropdownMenu(list: countryList,)
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 50,),
                Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: ImageForm(),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Subheader(text: "Смена пароля"),
                    ),
                    Container(
                      width: 300,
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: const TextSpan(
                          style: TextStyle(fontSize: 16.0, color: Color.fromRGBO(150, 150, 150, 1), fontStyle: FontStyle.italic),
                          children: <TextSpan> [TextSpan(text:
                          'Оставьте эти поля незаполненными, если не хотите изменять пароль'),
                          ],
                        ),
                      ),
                    ),
                    IntrinsicHeight(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisSize:MainAxisSize.min,
                          children: [
                            const Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget> [
                                Text ("Пароль:", style: TextStyle(fontSize: 16, color: Colors.black),),
                                Text ("Повторите пароль:", style: TextStyle(fontSize: 16, color: Colors.black),),
                              ],
                            ),
                            const SizedBox(width: 10,),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 150,
                                  child: TextFormField(
                                    controller: _pwController,
                                    obscureText: true,
                                    validator: (value) {
                                      var specialSymbols = <String>["!", "@", "#", "\$", "%", "^", ];
                                      var hasSpecialSymbols = false;
                                      specialSymbols.forEach((item) {
                                        if (value!.contains(item)) hasSpecialSymbols = true;
                                      });
                                      if (value == null || value.isEmpty) {
                                        //здесь прописать, что не нужно добавлять в бд
                                        return null;
                                      } else if (!hasSpecialSymbols || !isLength(value, 6) ||
                                                 !value.contains(RegExp(r'[A-Z]')) ||
                                                 !value.contains(RegExp(r'[0-9]'))) {
                                        return 'Неверный ввод';
                                      }
                                      return null;
                                    },
                                    decoration: const InputDecoration(
                                        hintText: "Пароль",
                                        hintStyle: TextStyle(fontStyle: FontStyle.italic),
                                        isDense: true,
                                        contentPadding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                                        border: OutlineInputBorder(),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(width: 1.0, color: Color.fromRGBO(150, 150, 150, 1)),
                                        )
                                    ),
                                    style: const TextStyle(fontSize: 16),
                                  ),
                                ), //password
                                const SizedBox(height: 5),
                                SizedBox(
                                  width: 150,
                                  child: TextFormField(
                                    controller: _pwRepeatController,
                                    obscureText: true,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        //здесь прописать, что не нужно добавлять в бд
                                        return null;
                                      } else if (_pwController.text != _pwRepeatController.text) {
                                        return 'Неверный ввод';
                                      }
                                      return null;
                                    },
                                    decoration: const InputDecoration(
                                        hintText: "Повторите пароль",
                                        hintStyle: TextStyle(fontStyle: FontStyle.italic),
                                        isDense: true,
                                        contentPadding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                                        border: OutlineInputBorder(),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(width: 1.0, color: Color.fromRGBO(150, 150, 150, 1)),
                                        )
                                    ),
                                    style: const TextStyle(fontSize: 16),
                                  ),
                                ), //rep password
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 15),
            Row(
                mainAxisSize:MainAxisSize.min,
                children: [
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(242, 242, 242, 1),
                      side: BorderSide(width: 1.0, color: Color.fromRGBO(150, 150, 150, 1)),
                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        //магия какая-то
                      }
                    },
                    child: const Text(
                        'Сохранить',
                        style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                  ),
                  const SizedBox(width: 10),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(242, 242, 242, 1),
                      side: const BorderSide(width: 1.0, color: Color.fromRGBO(150, 150, 150, 1)),
                    ),
                    onPressed: () {
                      _formKey.currentState!.reset();
                      _pwController.text = "";
                      _pwRepeatController.text = "";
                      _birthController.text = "";
                      _nameController.text = "";
                      _surnameController.text = "";
                      pageState.resetPfp();
                      pageState.resetDropdownMenus();
                    },
                    child: const Text(
                        'Отмена',
                        style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                  ),
                ]
            ),
          ],
        ),
      ),
    );
  }
}


class RegDropdownMenu extends StatelessWidget {
  static const defaultList = [''];
  final List<String> list;

  RegDropdownMenu({
    super.key,
    this.list = defaultList,
  });

  @override
  Widget build(BuildContext context) {
    var pageState = context.watch<PageState>();
    final curList = list;

    return DropdownMenu<String>(
      textStyle: const TextStyle(fontSize: 16),
      inputDecorationTheme: InputDecorationTheme(
        constraints: const BoxConstraints.expand(height: 30),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: const BorderSide(width: 1.0, color: Color.fromRGBO(150, 150, 150, 1)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: const BorderSide(width: 1.0, color: Color.fromRGBO(150, 150, 150, 1)),
        ),
        contentPadding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
      ),

      initialSelection: null,
      onSelected: (String? value) {
        pageState.updateDropdownMenuValue(value);
      },
      dropdownMenuEntries: curList.map<DropdownMenuEntry<String>>((String value) {
        return DropdownMenuEntry<String>(
          value: value,
          label: value,
          style: const ButtonStyle(
              textStyle: MaterialStatePropertyAll(TextStyle(fontSize: 16))
          ),
        );
      }).toList(),
    );
  }
}


class ImageForm extends StatefulWidget {
  const ImageForm({super.key});

  @override
  ImageFormState createState() {
    return ImageFormState();
  }
}

class ImageFormState extends State<ImageForm> {
  final _formKey = GlobalKey<FormState>();
  final _pathController = TextEditingController();
  File? _logoImage;

  Future<void> _selectLogoImage() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      setState(() {
        _logoImage = File(image.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var pageState = context.watch<PageState>();

    return IntrinsicHeight(
      child: Row(
        children: [
          Column (
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              _logoImage != null
                  ? Image.file(
                _logoImage!,
                height: 100,
              ) : const Text("Файл фото:",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
              const SizedBox(height: 8),
              SizedBox(
                width: 150,
                child: TextFormField(
                  controller: _pathController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      //здесь прописать, что не нужно добавлять в бд
                      return null;
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                      hintText: "Photo_logo.jpg",
                      hintStyle: TextStyle(fontStyle: FontStyle.italic),
                      isDense: true,
                      contentPadding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                      border: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1.0, color: Color.fromRGBO(150, 150, 150, 1)),
                      )
                  ),
                  style: const TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
          SizedBox(width: 15),
          Column(
            children: [
              Container(
                alignment: Alignment.center,
                height: 120,
                width: 90,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(234, 234, 234, 1),
                  border: Border.all(width: 1, color: Color.fromRGBO(82, 82, 82, 1),),),
                child: pageState.pfpPath.isNotEmpty ?
                Image.network(
                  (pageState.pfpPath),
                  fit: BoxFit.fill,
                ) : const Text("Фото", style: TextStyle(fontSize: 16, color: Colors.black),),

              ),
              SizedBox(height: 8,),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(242, 242, 242, 1),
                  side: BorderSide(width: 1.0, color: Color.fromRGBO(150, 150, 150, 1)),
                ),
                onPressed: () {
                  _selectLogoImage;
                },
                child: const Text(
                    'Просмотр...',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class Subheader extends StatelessWidget {
  const Subheader({
    super.key,
    required this.text,
  });

  final text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text('${text}',
        style: const TextStyle(
            fontSize: 20,
            color: Color.fromRGBO(153, 153, 153, 1),
            fontWeight: FontWeight.bold),
      ),
    );
  }
}