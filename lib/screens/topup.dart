// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

// import 'package:smarthaajir/widgets/dropdown.dart';

// class TopUp extends StatefulWidget {
//   const TopUp({super.key});

//   @override
//   _SendMoneyState createState() => _SendMoneyState();
// }

// class _SendMoneyState extends State<TopUp> {
//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//   final TextEditingController _titleController = TextEditingController();
//   final TextEditingController _dateController = TextEditingController();
//   final TextEditingController _descriptionController = TextEditingController();
//   bool _isLoading = false;
//   String _error = '';

//   Future<void> taskGivenHandler() async {
//     if (!_formKey.currentState!.validate()) {
//       return;
//     }

//     setState(() {
//       _isLoading = true;
//     });

//     try {
//       final response = await http.post(
//         Uri.parse('http://localhost:5001/api/admin/createNotice'),
//         headers: {
//           'Content-Type': 'application/json',
//         },
//         body: json.encode({
//           'title': _titleController.text,
//           'date': _dateController.text,
//           'description': _descriptionController.text,
//         }),
//       );

//       if (response.statusCode == 200) {
//         final responseData = json.decode(response.body);
//         print(responseData);
//         Navigator.of(context)
//             .pushReplacementNamed('/admin'); // Replace with your route
//       } else {
//         throw Exception('Failed to send money');
//       }
//     } catch (e) {
//       setState(() {
//         _error = 'An error occurred while creating the notice.';
//         _isLoading = false;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Mobile TopUp'),
//         // backgroundColor: Colors.deepPurple,
//         backgroundColor: const Color(0xFF41a124),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Form(
//           key: _formKey,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               if (_error.isNotEmpty) Text(_error),
//               TextFormField(
//                 controller: _titleController,
//                 decoration: const InputDecoration(labelText: 'Mobile Number'),
//                 keyboardType: TextInputType.number,
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter a valid mobile number';
//                   }
//                   return null;
//                 },
//               ),
//               const SizedBox(height: 10),
//               const Text(
//                 'Additional information or instructions can be displayed here.',
//                 style: TextStyle(fontSize: 14, color: Colors.black),
//               ),
//               const SizedBox(height: 20),
//               _isLoading
//                   ? const CircularProgressIndicator()
//                   : ElevatedButton(
//                       onPressed: taskGivenHandler,
//                       style: ElevatedButton.styleFrom(
//                         // backgroundColor: Colors.deepPurple,
//                         backgroundColor: const Color(0xFF41a124),
//                       ),
//                       // onPressed: () {},
//                       child: const Text(
//                         'PROCEED',
//                         style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 20,
//                         ),
//                       ),
//                     ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class TopUp extends StatefulWidget {
  const TopUp({super.key});

  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<TopUp> {
  final _formKey = GlobalKey<FormState>();
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
