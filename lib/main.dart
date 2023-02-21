import 'package:flutter/material.dart';
import 'package:test_sumple/account.dart';
import 'package:test_sumple/terms_of_service';

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
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("list_view"),
      ),
      body: Column(
        children: [
          ListTile(
            title: const Text("アカウント"),
            leading: const Icon(Icons.account_balance),
            tileColor: Colors.blue,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const account(),
                ),
              );
            },
          ),
          ListTile(
            title: const Text("利用規則"),
            leading: const Icon(Icons.account_balance),
            tileColor: const Color.fromARGB(255, 33, 243, 107),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const terms_of_service()));
            },
          ),
          ListTile(
            title: Text("sumple"),
            leading: Icon(Icons.account_balance),
            tileColor: Color.fromARGB(255, 255, 93, 130),
          ),
        ],
      ),
    );
  }
}
