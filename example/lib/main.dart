import 'package:flutter/material.dart';

void main() {
  runApp(ExampleApp());
}

class ExampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(child: buildBody()),
    );
  }

  List<String> filters = ["1", "2", "3", "4"];
  List<Key> selected = [];

  Widget buildBody() {
    List<Widget> chips = [];
    filters.forEach((element) {
      chips.add(buildItem(element));
    });

    return Wrap(children: chips);
  }

  Widget buildItem(String option) {
    var key = Key(option);
    return ChoiceChip(
      label: Text(option),
      selected: selected.contains(key),
      onSelected: (s) {
        // todo check existence

        setState(() {
          if (s) {
            selected.add(key);
          } else {
            selected.remove(key);
          }
        });
      },
    );
  }
}
