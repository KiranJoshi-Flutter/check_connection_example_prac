import 'package:check_connection_example_prac/esewaUI.dart';
import 'package:check_connection_example_prac/no_internet_UI.dart';
import 'package:flutter/material.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  final String title = 'Check Connectivity';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(
        title: title,
      ),
    );
  }
}

class MainPage extends StatefulWidget {
  final String title;

  const MainPage({Key? key, required this.title}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool hasInternet = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    InternetConnectionChecker().onStatusChange.listen((event) {
      bool hasInternetCheck =
          event == InternetConnectionStatus.connected ? true : false;
      setState(() {
        hasInternet = hasInternetCheck;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text(widget.title),
    //   ),
    //   body: Center(
    //     child: Text(hasInternet ? 'Active Internet' : 'No Internet'),
    //   ),
    // );
    return hasInternet ? EsewaUI() : NoInternetUI();
  }
}
