import 'package:flutter/material.dart';

class Testing extends StatefulWidget {
  const Testing({super.key});
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<Testing> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String? _inputValue; // Store the value of the text field

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextFormField Validation'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Enter a number'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a value';
                  }
                  if (!isNumeric(value)) {
                    return 'Please enter a valid number';
                  }
                  return null; // Input is valid
                },
                onSaved: (value) {
                  _inputValue = value;
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // If the form is valid, save the input value
                    _formKey.currentState!.save();
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Input: $_inputValue')),
                    );
                  }
                },
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  bool isNumeric(String? value) {
    if (value == null) {
      return false;
    }
    return double.tryParse(value) != null;
  }
}
