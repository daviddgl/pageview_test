import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: PageView(
          controller: controller,
          onPageChanged: (page) => {print(page.toString())},
          pageSnapping: true,
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
                color: Colors.pink,
                child: Center(
                    child: Text('This is Widget 1',
                        style: TextStyle(fontSize: 25, color: Colors.white)))),
            Container(
                color: Colors.green,
                child: Center(
                    child: Text('This is Widget - 2',
                        style: TextStyle(fontSize: 25, color: Colors.white)))),
            Container(
                color: Colors.lightBlue,
                child: Center(
                    child: Text('This is Widget - 3',
                        style: TextStyle(fontSize: 25, color: Colors.white)))),
            Container(
                color: Colors.pink,
                child: Center(
                    child: Text('This is Widget 4',
                        style: TextStyle(fontSize: 25, color: Colors.white)))),
            Container(
                color: Colors.green,
                child: Center(
                    child: Text('This is Widget - 5',
                        style: TextStyle(fontSize: 25, color: Colors.white)))),
            Container(
                color: Colors.lightBlue,
                child: Center(
                    child: Text('This is Widget - 6',
                        style: TextStyle(fontSize: 25, color: Colors.white)))),
            Container(
                color: Colors.pink,
                child: Center(
                    child: Text('This is Widget 7',
                        style: TextStyle(fontSize: 25, color: Colors.white)))),
          ],
        ),
      ),
    );
  }
}
