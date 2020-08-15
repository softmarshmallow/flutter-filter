import 'package:flutter/material.dart';
import 'package:flutter_filter/flutter_filter.dart';

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

    return Wrap(
      children: chips,
      spacing: 8.0,
    );
  }

  Widget buildItem(String option) {
    var key = Key(option);
    DropdownButton(items: null, onChanged: null);
    return ChipFilterItem(
      child: Text(option),
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
