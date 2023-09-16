import 'package:flutter/material.dart';
import 'dart:async';

class DelayedButtonExample extends StatefulWidget {
  @override
  _DelayedButtonExampleState createState() => _DelayedButtonExampleState();
}

class _DelayedButtonExampleState extends State<DelayedButtonExample> {
  bool _isButtonEnabled = true;
  Timer? _buttonTimer;

  void _disableButtonTemporarily() {
    setState(() {
      _isButtonEnabled = false;
    });

    // Enable the button after a certain delay (e.g., 5 seconds)
    _buttonTimer = Timer(Duration(seconds: 5), () {
      setState(() {
        _isButtonEnabled = true;
      });
    });
  }

  @override
  void dispose() {
    _buttonTimer?.cancel(); // Cancel the timer to prevent memory leaks
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Delayed Button Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: _isButtonEnabled
                  ? () {
                // Handle button press here
                // You can only press the button when it's enabled
              }
                  : null, // Disable the button if it's not enabled
              child: Text('Press Me'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _disableButtonTemporarily();
              },
              child: Text('Disable Button Temporarily'),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: DelayedButtonExample(),
  ));
}
