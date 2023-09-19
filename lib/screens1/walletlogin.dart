import 'dart:convert';

import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:wallet/colors/colors.dart';
// import 'package:wallet/home.dart';
// import 'package:wallet/login ans signup/core/text_style.dart';
// import 'package:wallet/login%20ans%20signup/core/space.dart';

// import 'package:wallet/login%20ans%20signup/signup_mobile.dart';

// import '../access_token_singleton.dart';

import 'package:wallet/widgets/text_style.dart';

class WalletLoginPage1 extends StatefulWidget {
  // const WalletLoginPage({Key? key}) : super(key: key);
  const WalletLoginPage1({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<WalletLoginPage1> {
  String? accessToken;
  TextEditingController UserName = TextEditingController();
  TextEditingController Password = TextEditingController();
  bool rememberMe = false; // Added boolean to manage checkbox state
  bool isPasswordVisible = false;
  bool requestInProgress =
      false; //Added Boolean to manage circular progress bar after clicking sign in
  // Save the mobile number to shared preferences
  // Future<void> _saveMobileNumber(String mobileNumber) async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   await prefs.setString('rememberedMobileNumber', mobileNumber);
  // }

// Retrieve the saved mobile number from shared preferences
  // Future<String?> _getSavedMobileNumber() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   return prefs.getString('rememberedMobileNumber');
  // }

  // Function to handle the login process
  // Future<void> _login() async {
  //   setState(() {
  //     if (rememberMe) {
  //       _saveMobileNumber(UserName.text); //saving mobile number aka username
  //     } else {
  //       _saveMobileNumber(
  //           ''); //saving an empty string to clear mobile number from saved preference
  //     }
  //     requestInProgress = true;
  //     //In this case we show circular progress indicator
  //   });
  //   final url = Uri.parse('');
  //   //Print the request payload
  //   // print('Request Payload:');
  //   // print('Username: ${UserName.text}');
  //   // print('Password: ${Password.text}');
  //   // print('Response Status Code: ${response.statusCode}');
  //   final response = await http.post(
  //     url,
  //     body: {
  //       'UserName': UserName.text,
  //       'Password': Password.text,
  //     },
  //   );
  //   setState(() {
  //     requestInProgress = false;
  //     //hide circular progress indicator
  //   });
  //   if (response.statusCode == 200) {
  //     //Collect AccessToken from api
  //     final Map<String, dynamic> responseData = json.decode(response.body);
  //     print('AS' + responseData['AccessToken']);
  //     setState(() {
  //       accessTokenGlobal = responseData['AccessToken'];
  //     });
  //     // Navigate to MobileWalletApp page on successful login
  //     Navigator.push(
  //       context,
  //       MaterialPageRoute(
  //         builder: (context) => MobileWalletApp(),
  //       ),
  //     );
  //     // for checking the response body uncomment below and comment above Navigator
  //     //print('Response: ${response.body}');
  //   } else {
  //     // Show a pop-up dialog for wrong username or password
  //     showDialog(
  //       context: context,
  //       builder: (context) => AlertDialog(
  //         title: const Text('Login Failed'),
  //         content: const Text('Wrong username or password.'),
  //         actions: <Widget>[
  //           TextButton(
  //             onPressed: () {
  //               Navigator.of(context).pop();
  //             },
  //             child: const Text('OK'),
  //           ),
  //         ],
  //       ),
  //     );
  //     //to see the response body uncomment below annd comment above the showDialog
  //     //print('Response: ${response.body}');
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    // Populate the mobile number text field with the saved value
    _getSavedMobileNumber().then((savedMobileNumber) {
      if (savedMobileNumber != null && savedMobileNumber.isNotEmpty) {
        UserName.text = savedMobileNumber;
        // Set the checkbox state based on whether the saved mobile number is present
        setState(() {
          rememberMe = true;
        });
      } else {
        // If saved mobile number is empty or not present, uncheck the checkbox
        setState(() {
          rememberMe = false;
        });
      }
    });
    return Scaffold(
      // backgroundColor: Colors.white,
      backgroundColor: const Color(0xFF41a124),

      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 70.0),
              const Text(
                'Welcome',
                style: headline1,
              ),
              const SizedBox(height: 10.0),
              const Text(
                'Please sign in to your account',
                style: headline3,
              ),
              //SpaceVH(height: 0.0),
              Image.asset(
                'assets/logo1.png',
                width: 80,
                height: 80,
              ),
              Image.network(
                'https://banner2.cleanpng.com/20180426/lwq/kisspng-computer-icons-login-management-user-5ae155f3386149.6695613615247170432309.jpg',
                width: 70,
                height: 70,
              ),
              Container(
                width: 350,
                child: TextField(
                  controller: UserName,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.account_circle_outlined),
                    hintText: 'Enter your username',
                    filled: true,
                    fillColor: Colors.white,
                    // border: OutlineInputBorder(
                    //   borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    //   borderSide: BorderSide(
                    //     color: CustomColors.border,
                    //     width: 2,
                    //   ),
                    // ),
                    // border: OutlineInputBorder(borderRadius: BorderRadius.all(radius))
                  ),
                ),
              ),

              // textFild(
              //   controller: UserName,
              //   image: 'user.svg',
              //   hintTxt: 'Username',
              // ),
              // textFild(
              //   controller: Password,
              //   image: 'hide.svg',
              //   isObs: true,
              //   hintTxt: 'Password',
              // ),
              const SizedBox(height: 10.0),
              Container(
                width: 350,
                child: TextField(
                  controller: Password,
                  obscureText: isPasswordVisible,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock_outline),
                      hintText: 'Enter your password',
                      filled: true,
                      fillColor: Colors.white,
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        borderSide: BorderSide(
                          // color: CustomColors.border,
                          color: Colors.red,
                          width: 2,
                        ),
                      ),
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            isPasswordVisible = !isPasswordVisible;
                          });
                        },
                        child: Icon(isPasswordVisible
                            ? Icons.visibility
                            : Icons.visibility_off),
                      )),
                ),
              ),
              //SpaceVH(height: 5.0),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Row(
                  // Row to display Checkbox and "Remember me" text
                  children: [
                    Checkbox(
                      value: rememberMe,
                      onChanged: (newValue) {
                        setState(() {
                          print('adsfdfd' + newValue.toString());
                          rememberMe = newValue == true ? false : true;
                        });
                      },
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          rememberMe = !rememberMe;
                        });
                      },
                      child: const Text(
                        'Remember Mobile Number',
                        // style: headline3,
                      ),
                    ),
                  ],
                ),
              ),
              //SpaceVH(height: 10.0),
              Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          // _login();
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              Colors.white, // Transparent background
                          elevation: 1, // Black border
                          side: const BorderSide(
                            width: 2,
                            // color: CustomColors
                            // .border
                            color: Colors.black,
                          ), // Black border with 2 width
                          padding: EdgeInsets.symmetric(
                              horizontal:
                                  MediaQuery.of(context).size.width * 0.2,
                              vertical: 15), // Button padding
                        ),
                        child: Stack(alignment: Alignment.center, children: [
                          if (!requestInProgress)
                            Text(
                              'Sign In',
                              style: TextStyle(
                                color: Colors.blue[900],
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          if (requestInProgress)
                            const SizedBox(
                              // width: 20,
                              // height: 20,
                              child: CircularProgressIndicator(),
                            ),
                        ]
                            // Mainbutton(
                            //   onTap: () {
                            //     // Navigator.push(
                            //     //   context,
                            //     //   MaterialPageRoute(
                            //     //     builder: (context) => MobileWalletApp(),
                            //     //   ),
                            //     // );
                            //     _login();
                            //     //print('tapped');
                            //   },
                            //   text: 'Sign in',
                            //   btnColor: blueButton,
                            // ),
                            // if (requestInProgress) const CircularProgressIndicator(),
                            //const SpaceVH(height: 20.0),
                            )),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              GestureDetector(
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => SignUp(),
                  //   ),
                  // );
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
                          // style: headline3,
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 60),
              Align(
                //padding: const EdgeInsets.only(left: 40, right: 40, top: 20),
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Powered By:',
                      // style: headline3,
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

class _getSavedMobileNumber {
  void then(Null Function(dynamic savedMobileNumber) param0) {}
}
