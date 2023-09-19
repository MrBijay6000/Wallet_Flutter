import 'package:flutter/material.dart';
import 'package:wallet/screens/home2.dart';

class LoginPage2 extends StatelessWidget {
  const LoginPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _userNameController = TextEditingController();

    void showConfirmationDialog(BuildContext context) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text(
              'Missing Information',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            content: const Text(
              'Please enter your username and password.',
              style: TextStyle(
                fontFamily: AutofillHints.birthday,
                fontSize: 20,
              ),
            ),
            actions: <Widget>[
              TextButton(
                child: const Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }

    void _saveUser() {
      final enteredName = _userNameController.text;

      if (enteredName.isEmpty) {
        showConfirmationDialog(context);
        return;
      }
      // Continue with your logic here
    }

    return Scaffold(
      body: Container(
        color: const Color(0xFF0c76ae),
        padding: const EdgeInsets.all(0.0),
        child: Stack(
          children: [
            Positioned(
              top: MediaQuery.of(context).size.height / 2,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 1.7,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'SMART HAAJIR',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                  ),
                ),
                const SizedBox(height: 22),
                Image.asset(
                  'assets/logo1.png',
                  fit: BoxFit.contain,
                  width: 150,
                ),
                const SizedBox(height: 0.0),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    children: [
                      const SizedBox(height: 100),
                      const Text(
                        'Welcome To Smart Attendance System',
                        style: TextStyle(
                          color: Color(0xFF2992cd),
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 40.0),
                      TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'Username',
                          icon: Icon(Icons.people),
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                          labelText: 'Password',
                          icon: Icon(Icons.lock),
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {
                            _saveUser();
                            // Navigator.of(context).push(
                            //   MaterialPageRoute(
                            //     builder: (ctx) => const HomeScreen2(),
                            //   ),
                            // );
                          },
                          child: const Text(
                            'LOGIN',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                      // TextButton(
                      //   onPressed: () {},
                      //   child: const Text('Forgot Password?'),
                      // )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
