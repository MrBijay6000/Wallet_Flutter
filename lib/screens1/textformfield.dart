import 'package:flutter/material.dart';

class TextForm extends StatefulWidget {
  const TextForm({super.key});

  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<TextForm> {
  TextEditingController firstController = TextEditingController();
  TextEditingController secondController = TextEditingController();
  bool isSecondFieldEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextFormField(
            controller: firstController,
            onChanged: (value) {
              setState(() {
                isSecondFieldEnabled = value.isNotEmpty;
              });
            },
            decoration: const InputDecoration(
              labelText: 'First Field',
            ),
          ),
          TextFormField(
            controller: secondController,
            enabled: isSecondFieldEnabled,
            decoration: const InputDecoration(
              labelText: 'Second Field',
            ),
          ),
        ],
      ),
    );
  }
}
