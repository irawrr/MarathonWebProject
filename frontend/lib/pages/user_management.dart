import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UserManagementHomeScreen extends StatelessWidget {
  const UserManagementHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PageState(),
      child: const UserManagementScreen(),
    );
  }
}

class PageState extends ChangeNotifier {
  String roleFilter = "";
  String columnFilter = "";
  String searchFilter = "";

  void updateSearch(value){
    searchFilter = value;
    notifyListeners();
  }

  void updateDropdownMenuValue(value){
    if (SelectFromDBFormsState.columnList.contains(value)) {
      columnFilter = value;
    }
    else if (SelectFromDBFormsState.roleList.contains(value)) {
      roleFilter = value;
    }
    notifyListeners();
  }
}


class UserManagementScreen extends StatefulWidget {
  const UserManagementScreen({super.key});

  @override
  State<UserManagementScreen> createState() => UserManagementScreenState();
}

class UserManagementScreenState extends State<UserManagementScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 120,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/admin_menu');
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
              'Управление пользователями',
              style: TextStyle(fontSize: 30, color: Color.fromRGBO(91, 91, 91, 1)),
            ),
            SelectFromDBForms(),
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


class SelectFromDBForms extends StatefulWidget {
  const SelectFromDBForms({super.key});

  @override
  SelectFromDBFormsState createState() => SelectFromDBFormsState();
}

class SelectFromDBFormsState extends State<SelectFromDBForms> {
  final _formKey = GlobalKey<FormState>();
  final _searchController = TextEditingController();

  static final roleList = ['доминант', 'сабмиссив', 'свитч'];
  static final columnList = ['1', '2', '3']; //заменить на данные бд

  @override
  Widget build(BuildContext context) {
    var pageState = context.watch<PageState>();

    return Form(
      key: _formKey,
      child: Center(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(242, 242, 242, 1),
                        side: const BorderSide(width: 1.0, color: Color.fromRGBO(150, 150, 150, 1)),
                      ),
                      onPressed: () { Navigator.pushNamed(context, '/home'); },
                      child: const Text(
                          '+ Добавление нового',
                          style: TextStyle(color: Colors.black, fontSize: 16)
                      ),
                    ),
                  ],
                ),
                Column(
                    children: [
                      const SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: IntrinsicHeight (
                          child: Row(
                            mainAxisSize:MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: <Widget> [
                                      Text ("Фильтр по ролям:", style: TextStyle(fontSize: 16),),
                                      Text ("Сортировать по:", style: TextStyle(fontSize: 16),),
                                      Text ("Поиск:", style: TextStyle(fontSize: 16),),
                                      SizedBox(height: 20),
                                    ],
                              ),
                              const SizedBox(width: 10,),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  RegDropdownMenu(list: roleList, hint: "Все роли",),
                                  const SizedBox(height: 5),
                                  RegDropdownMenu(list: columnList, hint: "Имени"),
                                  const SizedBox(height: 5),
                                  SizedBox(
                                    width: 180,
                                    child: TextFormField(
                                      controller: _searchController,
                                      validator: (value) { return null; },
                                      decoration: const InputDecoration(
                                          hintText: "Поиск",
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
                                  const SizedBox(height: 5),
                                  OutlinedButton(
                                    style: OutlinedButton.styleFrom(
                                      backgroundColor: const Color.fromRGBO(242, 242, 242, 1),
                                      side: const BorderSide(width: 1.0, color: Color.fromRGBO(150, 150, 150, 1)),
                                    ),
                                    onPressed: () {
                                      if (_formKey.currentState!.validate()) {
                                        //магия какая-то
                                      }
                                    },
                                    child: const Text(
                                        'Обновить',
                                        style: TextStyle(color: Colors.black, fontSize: 16)
                                    ),
                                  ), //кнопка обновления
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                ),
              ],
            ), //верхний ряд
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    textAlign: TextAlign.left,
                    text: const TextSpan(
                      style: TextStyle(fontSize: 16.0, color: Colors.black,),
                      children: <TextSpan>[
                        TextSpan(text: 'Всего пользователей: ', style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(text: '...'),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  const UserTable(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class UserTable extends StatelessWidget {
  const UserTable({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DataTable(
      border: TableBorder.all(
          width: 1.0,
          color: const Color.fromRGBO(150, 150, 150, 1),
      ),
      columns: const <DataColumn>[
          DataColumn(
            label: Expanded(
              child: Text('Имя', style: TextStyle(fontWeight: FontWeight.bold),),
            ),
          ),
          DataColumn(
            label: Expanded(
              child: Text('Фамилия', style: TextStyle(fontWeight: FontWeight.bold),),
            ),
          ),
          DataColumn(
            label: Expanded(
              child: Text('Email', style: TextStyle(fontWeight: FontWeight.bold),),
            ),
          ),
          DataColumn(
            label: Expanded(
              child: Text('Роль', style: TextStyle(fontWeight: FontWeight.bold),),
            ),
          ),
          DataColumn(
            label: Expanded(
              child: Text(' ', style: TextStyle(fontWeight: FontWeight.bold),),
            ),
          ),
        ],
      rows: const <DataRow>[
        DataRow(
          cells: <DataCell>[
            DataCell(Text('Джоан')),
            DataCell(Text('Джетт')),
            DataCell(Text('jj@gmail.com')),
            DataCell(Text('Координатор')),
            DataCell(EditButton())
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('Андрей')),
            DataCell(Text('Сущенко')),
            DataCell(Text('suschenkoaa@mail.ru')),
            DataCell(Text('Бегун')),
            DataCell(EditButton())
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('Cœur cœur cœur cœur')),
            DataCell(Text('Ton cœur bat, ton cœur bat')),
            DataCell(Text('Ton cœur bat encore')),
            DataCell(Text('La chamade Shalom')),
            DataCell(EditButton())
          ],
        ),
      ],
    );
  }
}

class EditButton extends StatelessWidget {
  const EditButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        backgroundColor: const Color.fromRGBO(242, 242, 242, 1),
        side: const BorderSide(width: 1.0, color: Color.fromRGBO(150, 150, 150, 1)),
      ),
      onPressed: () { Navigator.pushNamed(context, '/home'); },
      child: const Text(
          'Edit',
          style: TextStyle(color: Colors.black, fontSize: 16)
      ),
    );
  }
}


class RegDropdownMenu extends StatelessWidget {
  static const defaultList = [''];
  static const defaultHint = "";

  final List<String> list;
  final String hint;

  const RegDropdownMenu({
    super.key,
    this.list = defaultList,
    this.hint = defaultHint,
  });

  @override
  Widget build(BuildContext context) {
    var pageState = context.watch<PageState>();
    final curList = list;
    final curHint = hint;

    return DropdownMenu<String>(
      width: 180,
      textStyle: const TextStyle(fontSize: 16),
      hintText: curHint,
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: TextStyle(fontStyle: FontStyle.italic),
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
