import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'MyApp'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(tabs: [
              Tab(
                text: 'BERITA TERBARU',
              ),
              Tab(
                text: 'PERTANDINGAN HARI INI',
              )
            ]),
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: Text(widget.title),
          ),
          body: const TabBarView(
            children: [FirstTab(), FirstTab()],
          )),
    );
  }
}

class FirstTab extends StatelessWidget {
  const FirstTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          decoration:
              BoxDecoration(border: Border.all(color: Colors.purpleAccent)),
          margin: EdgeInsets.all(10.0),
          child: Column(
            children: [
              Image.asset("assets/images/header.jpeg"),
              Container(
                color: Colors.white,
                padding: EdgeInsets.all(8.0),
                child: Text("Ini adalah gawang"),
              ),
              Container(
                width: double.infinity,
                color: Colors.purpleAccent,
                padding: EdgeInsets.all(8.0),
                child: Text("Property"),
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView(
            children: [
              SecondWidget(),
              SecondWidget(),
              SecondWidget(),
              SecondWidget(),
            ],
          ),
        )
      ],
    );
  }
}

class SecondWidget extends StatelessWidget {
  const SecondWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all(color: Colors.blueAccent)),
      margin: EdgeInsets.all(10.0),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Image.asset("assets/images/header.jpeg"),
              ),
              Expanded(
                child: Container(
                  color: Colors.white,
                  padding: EdgeInsets.all(8.0),
                  child: Text("Ini adalah gawang pada saat malam hari"),
                ),
              ),
            ],
          ),
          const Divider(
            height: 0,
            color: Colors.blueAccent,
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(8.0),
            child: Text("Barcelona Feb 13, 2021"),
          ),
        ],
      ),
    );
  }
}

class NewWidget extends StatelessWidget {
  final String text;
  final Color color;
  const NewWidget({
    super.key,
    required this.text,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: color,
        height: 50.0,
        alignment: Alignment.center,
        child: Text(text),
      ),
    );
  }
}
