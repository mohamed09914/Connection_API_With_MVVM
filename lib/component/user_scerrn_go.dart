import 'package:flutter/material.dart';

import '../View/UserScreen.dart';

// ignore: non_constant_identifier_names
void UserSceenGo(BuildContext context) async {
  Navigator.of(context).push(MaterialPageRoute(
    builder: (context) => const userscreen(),
  ));
}
