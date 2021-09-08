import 'package:firebasetesting/screens/authenticate/authenticate.dart';
import 'package:flutter/material.dart';
import 'package:firebasetesting/screens/home/home.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    //return either home or authenticate widget
    return  Authenticate();

  }
}

