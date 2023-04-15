import 'package:app1/View/UserScreen.dart';
import 'package:app1/ViewModel/%D9%90AcountModeView.dart';
import 'package:app1/model/Acount.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../component/AccountList.dart';
import '../component/Loading.dart';
import '../component/user_scerrn_go.dart';

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
        child: Column(children: <Widget>[
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
        return Accountlist(
          acount: acount,
        );
      },
      separatorBuilder: (context, index) => Divider(),
      itemCount: acountModelView.list.length,
    ));
  }
}
