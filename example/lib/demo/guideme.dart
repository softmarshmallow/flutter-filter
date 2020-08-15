import 'package:flutter/material.dart';
import 'package:flutter_remote_ui/flutter_remote_ui.dart' as rui;

class Guideme extends StatefulWidget {
  static const routeName = "/demo/guide-me";
  Guideme({Key key}) : super(key: key);

  @override
  _GuidemeState createState() => _GuidemeState();
}

class _GuidemeState extends State<Guideme> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("appbar"),
      ),
    );
  }
}

class GenderTargetSelect extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
      child: Column(
        children: [
          rui.RemoteImage.asset("asset"),
        ],
      ),
    );
  }
}
