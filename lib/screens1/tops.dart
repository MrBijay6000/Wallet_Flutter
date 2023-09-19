import 'package:flutter/material.dart';

class TopUpDown extends StatefulWidget {
  const TopUpDown({super.key});

  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<TopUpDown> {
  final _formKey = GlobalKey<FormState>();
  final _controller = TextEditingController();

  String _amount = '';

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      print('Name: $_amount');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mobile TopUp'),
        // backgroundColor: Colors.deepPurple,
        backgroundColor: const Color(0xFF41a124),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextFormField(
                controller: _controller,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Mobile Number',
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your valid mobile number!';
                  }
                  return null;
                },
                onChanged: (value) {
                  if (_controller.text.isNotEmpty) {
                    _formKey.currentState!.validate();
                  }
                },
                onSaved: (value) {
                  _amount = value!;
                },
              ),
              const SizedBox(height: 16),
              const Text(
                'Mobile Number',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                ),
              ),
              TextFormField(
                controller: _controller,
                decoration: const InputDecoration(
                  labelText: 'Enter text',
                  // Add any other decoration properties you need
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null; // Return null to clear the error message
                },
                onChanged: (value) {
                  if (_controller.text.isNotEmpty) {
                    _formKey.currentState!.validate();
                  }
                },
              ),
              TextFormField(
                controller: _controller,
                decoration: const InputDecoration(
                  labelText: 'Enter text',
                  // Add any other decoration properties you need
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null; // Return null to clear the error message
                },
                onChanged: (value) {
                  // Clear the error message when the user starts typing
                  if (_controller.text.isNotEmpty) {
                    _formKey.currentState!.validate();
                  }
                },
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: _submitForm,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF41a124),
                ),
                child: const Text(
                  'PROCEED',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    // color: Color(0xFF41a124),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
