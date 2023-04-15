import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class userscreen extends StatelessWidget {
  const userscreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen User'),
      ),
      body: Container(
        child: Text('User Screen'),
      ),
    );
  }
}
