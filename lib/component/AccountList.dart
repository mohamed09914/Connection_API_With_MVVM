import 'package:app1/component/user_scerrn_go.dart';
import 'package:app1/model/Acount.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

import '../View/UserScreen.dart';

class Accountlist extends StatelessWidget {
  final Acount acount;
  Accountlist({required this.acount});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () => UserSceenGo(context),
        title: Text(
          acount.name,
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
          ),
        ),
        subtitle: Text(
          acount.email,
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
