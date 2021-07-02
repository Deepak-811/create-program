import 'package:flutter/material.dart';
import 'package:string_util/string_util.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _check();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Home'),
      ),
      body: Container(),
    );
  }

  void _check() {
    print('is Is'.countMatchesIgnoreCase('is'));
  }
}
