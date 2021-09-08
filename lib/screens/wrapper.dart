import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebasetesting/screens/authenticate/authenticate.dart';
import 'package:flutter/material.dart';
import 'package:firebasetesting/screens/home/home.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /*

    final user = Provider.of<User>(context);
    print(user);

     */

    //return either home or authenticate widget
    return  Authenticate();

  }
}

