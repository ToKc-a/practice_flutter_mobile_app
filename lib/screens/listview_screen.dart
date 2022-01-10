import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
  const ListViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SimpleList(),
      ),
    );
  }
}

class MyListItem extends StatelessWidget {
  const MyListItem({Key? key, required this.number}) : super(key: key);

  final int number;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.all(10),
      decoration:
      BoxDecoration(color: Colors.indigo[400], border: Border.all(), borderRadius: BorderRadius.circular(50)),
      child: Text(
        "Элемент № $number",
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.w600
        ),
      ),
    );
  }
}

class SimpleList extends StatelessWidget {
  const SimpleList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        Text('Первый'),
        Text('Второй'),
        Text('Третий'),
        Divider(
          height: 50,
          color: Colors.indigo,
        ),
        MyListItem(number: 1),
        MyListItem(number: 2),
        MyListItem(number: 3),
        MyListItem(number: 4),
        MyListItem(number: 5),
        MyListItem(number: 6),
        MyListItem(number: 7),
        MyListItem(number: 8),
        MyListItem(number: 9),
        MyListItem(number: 10),
        MyListItem(number: 11),
        MyListItem(number: 12),
      ],
    );
  }
}

class SimpleListBuilder extends StatelessWidget {
  SimpleListBuilder({Key? key}) : super(key: key);

  //var list = new List<int>.generate(50, (i) => i + 1)

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(8),
      itemCount: 20,
      itemBuilder: (BuildContext context, int index) {
        return MyListItem(number: index);
      },
    );
  }
}

class SimpleListSeparated extends StatelessWidget {
  SimpleListSeparated({Key? key}) : super(key: key);

  var list = new List<int>.generate(50, (i) => i + 1);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        padding: EdgeInsets.all(8),
        itemCount: list.length,
        itemBuilder: (BuildContext context, int index) {
          return MyListItem(number: index);
        },
        separatorBuilder: (BuildContext context, int index) =>
        const Divider(
          thickness: 3,
        ));
  }
}

class SimpleListClicked extends StatefulWidget {
  const SimpleListClicked({Key? key}) : super(key: key);

  @override
  _SimpleListClickedState createState() => _SimpleListClickedState();
}

class _SimpleListClickedState extends State<SimpleListClicked> {

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text('Item $index'),
            selected: index == _selectedIndex,
            onTap: () {
              setState(() {
                _selectedIndex = index;
              });
            },
          );
        }, separatorBuilder: (BuildContext context, int index) =>
    const Divider(
      thickness: 3,
    ),
    );
  }
}
