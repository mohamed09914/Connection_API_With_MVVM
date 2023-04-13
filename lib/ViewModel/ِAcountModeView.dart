import 'package:app1/repo/api_status.dart';
import 'package:flutter/material.dart';
import '../model/Acount.dart';
import '../repo/ApIConnect.dart';

class AcountModelView extends ChangeNotifier {
  bool _loading = false;
  List<Acount> _list = [];

  bool get loading => _loading;
  List<Acount> get list => _list;

  AcountModelView() {
    UserAccount();
  }

  setLoading(bool loading) {
    _loading = loading;
    notifyListeners();
  }

  setlist(List<Acount> list) {
    _list = list;
  }

  // ignore: non_constant_identifier_names
  UserAccount() async {
    Connect _connect = new Connect();
    setLoading(true);
    var response = await _connect.GetData();
    if (response is Success) {
      setlist(response.response as List<Acount>);
    }
    if (response is Failare) {}
    setLoading(false);
  }
}
