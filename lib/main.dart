import 'package:flutter/material.dart';
import 'package:flutter_europe_app/demo/background.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter AR Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter AR Demo'),
        ),
        body: DemoTile(title: 'Background 3D Image', demo: Background()),
      ),
    );
  }
}

class DemoTile extends StatelessWidget {
  const DemoTile({Key key, this.title, this.demo}) : super(key: key);

  final String title;
  final Widget demo;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => demo,
        ),
      ),
    );
  }
}
