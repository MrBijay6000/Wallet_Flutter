import 'package:flutter/material.dart';
import 'package:wallet/screens1/dropdown_data.dart';

// class DropdownForm extends StatefulWidget {
//   const DropdownForm({super.key});
//   @override
//   _MyFormPageState createState() => _MyFormPageState();
// }

// class _MyFormPageState extends State<DropdownForm> {
//   String selectedDropdownItem = dropdownItems[0]; // Set an initial value

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Form Page'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             TextFormField(
//               decoration: const InputDecoration(
//                 labelText: 'Select an Item',
//               ),
//               readOnly: true, // Prevent user input directly into the text field
//               onTap: () {
//                 // Show the dropdown options when the text field is tapped
//                 showDialog(
//                   context: context,
//                   builder: (BuildContext context) {
//                     return AlertDialog(
//                       content: DropdownButton<String>(
//                         value: selectedDropdownItem,
//                         onChanged: (String? newValue) {
//                           setState(() {
//                             selectedDropdownItem = newValue!;
//                             Navigator.of(context).pop(); // Close the dialog
//                           });
//                         },
//                         items: dropdownItems.map<DropdownMenuItem<String>>(
//                           (String value) {
//                             return DropdownMenuItem<String>(
//                               value: value,
//                               child: Text(value),
//                             );
//                           },
//                         ).toList(),
//                       ),
//                     );
//                   },
//                 );
//               },
//             ),
//             const SizedBox(height: 20),
//             Text('Selected Item: $selectedDropdownItem'),
//           ],
//         ),
//       ),
//     );
//   }
// }

class DropdownForm extends StatefulWidget {
  const DropdownForm({super.key});
  @override
  _MyFormPageState createState() => _MyFormPageState();
}

class _MyFormPageState extends State<DropdownForm> {
  String selectedDropdownItem = dropdownItems[0]; // Set an initial value

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Select an Item',
              ),
              readOnly: true, // Prevent user input directly into the text field
              onTap: () {
                _showDropdownDialog();
              },
              controller: TextEditingController(text: selectedDropdownItem),
            ),
          ],
        ),
      ),
    );
  }

  void _showDropdownDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: DropdownButton<String>(
            value: selectedDropdownItem,
            onChanged: (String? newValue) {
              setState(() {
                selectedDropdownItem = newValue!;
                Navigator.of(context).pop(); // Close the dialog
              });
            },
            items: dropdownItems.map<DropdownMenuItem<String>>(
              (String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              },
            ).toList(),
          ),
        );
      },
    );
  }
}
