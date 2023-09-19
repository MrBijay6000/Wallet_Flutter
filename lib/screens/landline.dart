import 'package:flutter/material.dart';

class LandLine extends StatefulWidget {
  const LandLine({super.key});
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<LandLine> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String? _inputValue; // Store the value of the text field

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LANDLINE'),
        // backgroundColor: Colors.deepPurple,
        backgroundColor: const Color(0xFF41a124),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Landline Number',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                    // textAlign: TextAlign.start,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Landline number',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a valid landline number';
                  }
                  if (!isNumeric(value)) {
                    return 'Please enter a valid landline number';
                  }
                  return null; // Input is valid
                },
                onSaved: (value) {
                  _inputValue = value;
                },
              ),
              const SizedBox(height: 20),
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
                style: ElevatedButton.styleFrom(
                  // backgroundColor: Colors.deepPurple,
                  backgroundColor: const Color(0xFF41a124),
                ),
                child: const Text(
                  'PAY',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
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
