import 'package:flutter/material.dart';

class EsewaUI extends StatefulWidget {
  const EsewaUI({Key? key}) : super(key: key);

  @override
  _EsewaUIState createState() => _EsewaUIState();
}

class _EsewaUIState extends State<EsewaUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Esewa UI'),
      ),
    );
  }
}
