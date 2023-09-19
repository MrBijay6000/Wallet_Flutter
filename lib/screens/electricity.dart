// import 'package:flutter/material.dart';

// class ElectricityScreen extends StatefulWidget {
//   const ElectricityScreen({super.key});

//   @override
//   _MyDropdownPageState createState() => _MyDropdownPageState();
// }

// class _MyDropdownPageState extends State<ElectricityScreen> {
//   String selectedOption = 'Option 1';

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Electricity'),
//         backgroundColor: Colors.deepPurple,
//       ),
//       body: Center(
//         child: DropdownButton<String>(
//           value: selectedOption,
//           onChanged: (newValue) {
//             setState(() {
//               selectedOption = newValue!;
//             });
//           },
//           items: <String>['Option 1', 'Option 2', 'Option 3', 'Option 4']
//               .map<DropdownMenuItem<String>>((String value) {
//             return DropdownMenuItem<String>(
//               value: value,
//               child: Text(value),
//             );
//           }).toList(),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class ElectricityScreen extends StatefulWidget {
  const ElectricityScreen({Key? key}) : super(key: key);

  @override
  _ElectricityScreenState createState() => _ElectricityScreenState();
}

class _ElectricityScreenState extends State<ElectricityScreen> {
  late String _selectedValue;
  final _scNumber = TextEditingController();

  final List<String> _dropdownItems = [
    'TRIVENI DC',
    'TULSIPUR DC',
    'THIMI DC',
    'BANESHWOR DC',
  ];

  @override
  void initState() {
    super.initState();
    _selectedValue = _dropdownItems[0];
  }

  @override
  void dispose() {
    _scNumber.dispose();
    super.dispose();
  }

  void getDetails() {
    if (_scNumber.text.trim().isEmpty) {
      showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
          title: const Text('Invalid Input'),
          content: const Text('Please Provide A Valid SC Number'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Okay'),
            )
          ],
        ),
      );
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Electricity'),
        // backgroundColor: Colors.deepPurple,
        backgroundColor: const Color(0xFF41a124),
      ),
      body: Form(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Counter'),
              const SizedBox(height: 8),
              DropdownButtonFormField(
                value: _selectedValue,
                items: _dropdownItems.map((String value) {
                  return DropdownMenuItem(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedValue = newValue!;
                  });
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  filled: true,
                  hintText: 'Counter',
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: _scNumber,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'SC Number',
                ),
              ),
              const SizedBox(height: 16),
              Text('You selected: $_selectedValue'),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: getDetails,
                // onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF41a124),
                ),
                child: const Text(
                  'GET DETAILS',
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
