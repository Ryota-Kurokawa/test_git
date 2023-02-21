import 'package:flutter/material.dart';

class account extends StatelessWidget {
  const account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('account')),
      body: const Center(
        child: Text("something"),
      ),
    );
  }
}
