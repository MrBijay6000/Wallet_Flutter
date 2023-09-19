// import 'package:flutter/material.dart';
// import 'package:smarthaajir/widgets/main_button.dart';

// class ValidScreen extends StatelessWidget {
//   const ValidScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Column(
//           children: [
//             TextFormField(
//               decoration: const InputDecoration(
//                 border: OutlineInputBorder(),
//                 labelText: 'Mobile Number',
//               ),
//               keyboardType: TextInputType.number,
//               validator: (value) {
//                 if (value == null || value.isEmpty) {
//                   return 'Please enter your valid mobile number!';
//                 }
//                 return null;
//               },
//               onSaved: (value) {},
//             ),
//             const SizedBox(height: 40),
//             Form(
//               child: Mainbutton(
//                 onTap: () {
//                   // Navigator.push(
//                   //   context,
//                   //   MaterialPageRoute(
//                   //     builder: (context) => MobileWalletApp(),
//                   //   ),
//                   // );
//                   // _signup();
//                   //print('tapped');
//                 },
//                 text: 'Sign up',
//                 style: const TextStyle(
//                   color: Colors.white,
//                   fontWeight: FontWeight.bold,
//                   fontSize: 22,
//                 ),
//                 btnColor: Colors.deepPurple,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:wallet/widgets/main_button.dart';

class ValidScreen extends StatefulWidget {
  const ValidScreen({super.key});

  @override
  _ValidScreenState createState() => _ValidScreenState();
}

class _ValidScreenState extends State<ValidScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formKey, // Assign the form key here
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Mobile Number',
                ),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 40),
              Mainbutton(
                onTap: () {
                  // Trigger form validation when the button is tapped
                  if (_formKey.currentState?.validate() ?? false) {
                    // Validation passed, you can perform your action here
                    // For example, you can navigate to a new screen.
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => MobileWalletApp(),
                    //   ),
                    // );
                  }
                },
                text: 'Sign up',
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
                btnColor: Colors.deepPurple,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
