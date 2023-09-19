import 'package:flutter/material.dart';
import 'package:wallet/screens/wallet.dart';
import 'package:wallet/screens/walletlogin.dart';
import 'package:wallet/screens/walletsignup.dart';
// import 'package:wallet/colors/colors.dart';
// import 'package:wallet/login ans signup/core/colors.dart';
// import 'package:wallet/login ans signup/core/text_style.dart';
// import 'package:wallet/login%20ans%20signup/core/space.dart';
// import 'package:wallet/login%20ans%20signup/login_page.dart';
// import 'package:wallet/login%20ans%20signup/widget/main_button.dart';
import 'package:wallet/widgets/colors.dart';
import 'package:wallet/widgets/main_button.dart';
import 'package:wallet/widgets/style.dart';
import 'package:wallet/widgets/space.dart';
import 'package:wallet/widgets/text_style.dart';

class WalletLoginPage extends StatefulWidget {
  // const SignUp({Key? key}) : super(key: key);
  const WalletLoginPage({super.key});

  @override
  _SignUp createState() => _SignUp();
}

class _SignUp extends State<WalletLoginPage> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  bool requestInProgress = false;

  Future<void> _signin() async {
    setState(() {
      requestInProgress = true;
    });

    // API call section
    // final url = Uri.parse('');
    // final response = await http.post(
    //   url,
    //   body: {
    //     'AccountName': accountName.text,
    //     'Email': email.text,
    //     'Address': address.text,
    //     'AccountNo': accountNo.text,
    //     'MobileNO': mobileNo.text,
    //   },
    // );

    setState(() {
      requestInProgress = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      // color: Color(0xFF41a124),
      backgroundColor: const Color(0xFF41a124),
      body: Padding(
        padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 40.0),
              const Text(
                'Welcome',
                style: headline1,
              ),
              const SizedBox(height: 10.0),
              const Text(
                'Please sign up using mobile number',
                style: headline3,
              ),
              const SizedBox(height: 10.0),
              // Image.asset(
              //   'assets/registermobile.jpg',
              //   height: 70,
              //   width: 70,
              // ),
              Image.network(
                'https://toppng.com/uploads/preview/welcome-to-rajnagar-welcome-hand-11562969553eyjkkrcux0.png',
                height: 70,
                width: 70,
              ),
              const SizedBox(height: 40.0),
              InputField(
                prefixIcon: Icons.account_circle_outlined,
                controller: username,
                hintText: 'Enter your username name',
              ),
              const SizedBox(height: 15),
              InputField(
                prefixIcon: Icons.lock_outline,
                controller: password,
                hintText: 'Enter your password',
              ),

              // Add form fields for Account Holder Name, Email, Address, Account Number, and Mobile Number
              // Container(
              //   child: TextField(
              //     controller: accountName,
              //     decoration: const InputDecoration(
              //       prefixIcon: Icon(Icons.account_circle_outlined),
              //       hintText: 'Enter your username',
              //       filled: true,
              //       fillColor: Colors.white,
              //       border: OutlineInputBorder(
              //         borderRadius: BorderRadius.all(Radius.circular(8.0)),
              //         borderSide: BorderSide(
              //           color: CustomColors.border,
              //           width: 2,
              //         ),
              //       ),
              //     ),
              //   ),
              // ),

              // TextFormField(
              //   controller: accountName,
              //   decoration: const InputDecoration(
              //     labelText: 'Account Holder Name',
              //   ),
              // ),
              // const SpaceVH(height: 10.0),
              // TextFormField(
              //   controller: email,
              //   decoration: const InputDecoration(
              //     labelText: 'Email',
              //   ),
              // ),
              // const SpaceVH(height: 10.0),
              // TextFormField(
              //   controller: address,
              //   decoration: const InputDecoration(
              //     labelText: 'Address',
              //   ),
              // ),
              // const SpaceVH(height: 10.0),
              // TextFormField(
              //   controller: accountNo,
              //   decoration: const InputDecoration(
              //     labelText: 'Account Number',
              //   ),
              // ),
              // const SpaceVH(height: 10.0),
              // TextFormField(
              //   controller: mobileNo,
              //   decoration: const InputDecoration(
              //     labelText: 'Mobile Number',
              //   ),
              // ),
              // //SpaceVH(height: 5.0),

              const SizedBox(height: 30.0),
              Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  children: [
                    Mainbutton(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const BankingWalletHome(),
                          ),
                        );
                      },
                      text: 'Sign In',

                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),

                      // btnColor: blueButton,
                      btnColor: Colors.deepPurple,
                      // btnColor: const Color(0xFF41a124),
                    ),
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.login),
                      label: Text('Sign Up'),
                    ),
                    // if (requestInProgress) const CircularProgressIndicator(),
                    const SizedBox(height: 20.0),
                  ],
                ),
              ),
              // Column(
              //   children: [
              //     const Text(
              //       'Already have account? ',
              //       // style: headline3,
              //       textAlign: TextAlign.center,
              //     ),
              //     const SizedBox(height: 5.0),
              //     GestureDetector(
              //       onTap: () {
              //         Navigator.push(
              //           context,
              //           MaterialPageRoute(
              //             builder: (context) => const WalletLoginPage(),
              //           ),
              //         );
              //       },
              //       child: const Text(
              //         'Click Here To Login ',
              //         style: TextStyle(
              //           // color: CustomColors.text1,
              //           fontSize: 14,
              //           fontWeight: FontWeight.bold,
              //         ),
              //         textAlign: TextAlign.center,
              //       ),
              //     )
              //   ],
              // ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const WalletSignUpPage(),
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                      // border: Border.all(color: CustomColors.border, width: 2),
                      borderRadius: BorderRadius.circular(8)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/logo1.png',
                          height: 70,
                          width: 70,
                        ),
                        const Text(
                          'Activate \n Mobile Banking',
                          style: headline3,
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 40, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Powered By:',
                      style: headline3,
                    ),
                    Image.network(
                      'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTen84kCvcJeKKUQIKKpLBjY-By4gZ5Fs_qLLXZAKIT5wyVeqH5',
                      height: 40,
                      width: 60,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class InputField extends StatelessWidget {
  final IconData prefixIcon;
  final TextEditingController controller;
  final String hintText;

  const InputField({
    required this.prefixIcon,
    required this.controller,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          prefixIcon: Icon(prefixIcon),
          hintText: hintText,
          filled: true,
          fillColor: Colors.white,
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            borderSide: BorderSide(
              // color: CustomColors.border,
              color: Colors.black,
              width: 2,
            ),
          ),
        ),
      ),
    );
  }
}
