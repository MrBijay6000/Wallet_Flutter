import 'package:flutter/material.dart';

class VTextForm extends StatefulWidget {
  const VTextForm({super.key});
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<VTextForm> {
  TextEditingController firstController = TextEditingController();
  TextEditingController secondController = TextEditingController();
  bool isSecondFieldVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Show Second TextFormField'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormField(
              controller: firstController,
              onChanged: (value) {
                setState(() {
                  isSecondFieldVisible = value.isNotEmpty;
                });
              },
              decoration: InputDecoration(
                labelText: 'First Field',
              ),
            ),
            Visibility(
              visible: isSecondFieldVisible,
              child: TextFormField(
                controller: secondController,
                decoration: InputDecoration(
                  labelText: 'Second Field',
                ),
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Add the logic to handle the button press here
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
