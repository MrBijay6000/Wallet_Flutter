import 'package:flutter/material.dart';
import 'package:wallet/screens/1.dart';
import 'package:wallet/screens/animate.dart';
import 'package:wallet/screens/animate1.dart';
import 'package:wallet/screens/featureds.dart';
import 'package:wallet/screens/recharge.dart';
import 'package:wallet/screens/grid.dart';
import 'package:wallet/screens/grid1.dart';
import 'package:wallet/screens/grid2.dart';
import 'package:wallet/screens/home2.dart';
import 'package:wallet/screens/image.dart';
import 'package:wallet/screens/login.dart';

import 'package:wallet/screens/login3.dart';
import 'package:wallet/screens/send.dart';
import 'package:wallet/screens/landline.dart';
import 'package:wallet/screens/wallet.dart';
import 'package:wallet/screens/wallet1.dart';
import 'package:wallet/screens/walletlogin.dart';
import 'package:wallet/screens/walletsignup.dart';
import 'package:wallet/screens1/button.dart';
import 'package:wallet/screens1/drawer.dart';
import 'package:wallet/screens1/dropdownform.dart';
import 'package:wallet/screens1/form.dart';
import 'package:wallet/screens1/form1.dart';
import 'package:wallet/screens1/json_data.dart';
import 'package:wallet/screens1/login.dart';
import 'package:wallet/screens1/test.dart';
import 'package:wallet/screens1/testbutton.dart';
import 'package:wallet/screens1/textformfield.dart';
import 'package:wallet/screens1/tops.dart';
import 'package:wallet/screens1/valid.dart';
import 'package:wallet/screens1/vtextformfield.dart';
import 'package:wallet/widgets/dropdown.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WalletSignUpPage(),
    );
  }
}
