import 'package:flutter/material.dart';

class AnimatedLoginButton extends StatefulWidget {
  @override
  _AnimatedLoginButtonState createState() => _AnimatedLoginButtonState();
}

class _AnimatedLoginButtonState extends State<AnimatedLoginButton> {
  bool _isButtonClicked = false;

  void _onLoginButtonClicked() {
    setState(() {
      _isButtonClicked = true;
    });

    // Simulating a delay before resetting the button state
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        _isButtonClicked = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Login Button'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: Duration(seconds: 1),
          width: _isButtonClicked ? 200 : 100,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(_isButtonClicked ? 25 : 0),
          ),
          child: ElevatedButton(
            onPressed: _onLoginButtonClicked,
            child: Text(
              _isButtonClicked ? 'Logging In...' : 'LOGIN',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
