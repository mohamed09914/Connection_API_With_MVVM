import 'dart:ui';
import 'package:app1/ViewModel/%D9%90AcountModeView.dart';
import 'package:app1/model/Acount.dart';
import 'package:app1/repo/ApIConnect.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:provider/provider.dart';

import '../component/Loading.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return MainScreenState();
  }
}

class MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    AcountModelView acountModelView = context.watch<AcountModelView>();
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Conect Http Request'),
      ),
      body: Container(
        child: Column(children: [
          const Padding(padding: EdgeInsets.all(10)),
          _ui(acountModelView),
        ]),
      ),
    );
  }

  _ui(AcountModelView acountModelView) {
    if (acountModelView.loading) {
      return const loading();
    }
    return Expanded(
        child: ListView.separated(
      itemBuilder: (context, index) {
        Acount acount = acountModelView.list[index];
        return Container(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  acount.name,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                  ),
                ),
                Text(
                  acount.email,
                  style: TextStyle(color: Colors.black),
                ),
              ]),
        );
      },
      separatorBuilder: (context, index) => Divider(),
      itemCount: acountModelView.list.length,
    ));
  }
}
