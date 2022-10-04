import 'package:flutter/material.dart';

class Add extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => AddState();
}

class AddState extends State {
  final _formKey = GlobalKey<FormState>();

  int pressCount = 0;
  String inputValue = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
            children: <Widget> [
              Align(
                  alignment: Alignment.topCenter,
                  child: TextField(
                      onChanged: (text) {
                        setState(() {
                          inputValue = text;
                        });
                      },
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Новая задача',
                      )
                  )
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    pressCount++;
                    debugPrint('test: $pressCount $inputValue');
                  });
                },
                child: const Text('Добавить'),
              ),
            ]
        )
    );
  }
}
