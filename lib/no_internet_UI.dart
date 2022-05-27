import 'package:flutter/material.dart';

class NoInternetUI extends StatefulWidget {
  const NoInternetUI({Key? key}) : super(key: key);

  @override
  _NoInternetUIState createState() => _NoInternetUIState();
}

class _NoInternetUIState extends State<NoInternetUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('No Internet'),
      ),
    );
  }
}
