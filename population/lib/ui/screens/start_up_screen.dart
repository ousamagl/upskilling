import 'package:flutter/material.dart';

class StartUpScreen extends StatefulWidget {
  const StartUpScreen({Key? key}) : super(key: key);
  @override
  StartUpScreenState createState() => StartUpScreenState();
}

class StartUpScreenState extends State<StartUpScreen> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  FocusNode usernameFocus = FocusNode();
  FocusNode passwordFocus = FocusNode();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold();
  }
}
