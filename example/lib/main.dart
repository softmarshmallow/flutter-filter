import 'package:flutter/material.dart';
import 'package:flutter_remote_ui/flutter_remote_ui.dart' as rui;
import 'demo/guideme.dart';

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
      routes: {
        Guideme.routeName: (c) => Guideme(),
      },
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("demo home"),
      ),
      body: buildBody(),
    );
  }

  Widget buildBody() {
    return ListView.builder(
      itemBuilder: (c, i) {
        return rui.RouteRow(title: Text(""), route: "null");
      },
      itemCount: 1,
    );
  }
}
