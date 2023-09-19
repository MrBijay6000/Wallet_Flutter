import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:wallet/widgets/dropdown.dart';

class SendMoney extends StatefulWidget {
  const SendMoney({super.key});

  @override
  _SendMoneyState createState() => _SendMoneyState();
}

class _SendMoneyState extends State<SendMoney> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  bool _isLoading = false;
  String _error = '';

  // Future<void> taskGivenHandler() async {
  //   if (!_formKey.currentState!.validate()) {
  //     return;
  //   }

  //   setState(() {
  //     _isLoading = true;
  //   });

  //   try {
  //     final response = await http.post(
  //       Uri.parse('http://localhost:5001/api/admin/createNotice'),
  //       headers: {
  //         'Content-Type': 'application/json',
  //       },
  //       body: json.encode({
  //         'title': _titleController.text,
  //         'date': _dateController.text,
  //         'description': _descriptionController.text,
  //       }),
  //     );

  //     if (response.statusCode == 200) {
  //       final responseData = json.decode(response.body);
  //       print(responseData);
  //       Navigator.of(context)
  //           .pushReplacementNamed('/admin'); // Replace with your route
  //     } else {
  //       throw Exception('Failed to send money');
  //     }
  //   } catch (e) {
  //     setState(() {
  //       _error = 'An error occurred while creating the notice.';
  //       _isLoading = false;
  //     });
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Send Money'),
        // backgroundColor: Colors.deepPurple,
        backgroundColor: const Color(0xFF41a124),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (_error.isNotEmpty) Text(_error),
              TextFormField(
                controller: _titleController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Receiver Name',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a valid receiver name';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: _dateController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Receiver Mobile Number',
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a valid mobile number';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: _dateController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Amount',
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a valid amount';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: _descriptionController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Purpose',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a valid purpose';
                  }
                  // if (value.length < 5) {
                  //   return 'Description should be at least 5 characters long';
                  // }
                  DropdownExample;
                  return null;
                },
              ),
              const SizedBox(height: 20),
              _isLoading
                  ? const CircularProgressIndicator()
                  : ElevatedButton(
                      // onPressed: taskGivenHandler,
                      style: ElevatedButton.styleFrom(
                        // backgroundColor: Colors.deepPurple,
                        backgroundColor: const Color(0xFF41a124),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'SEND',
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
}
