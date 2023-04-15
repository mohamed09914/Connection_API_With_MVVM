// ignore_for_file: file_names
// ignore: unused_import
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import '../model/Acount.dart';
import 'api_status.dart';

class Connect {
  // ignore: non_constant_identifier_names
  Future GetData() async {
    String myUrl = 'https://jsonplaceholder.typicode.com/users';
    http.Response ersponse = await http.get(Uri.parse(myUrl));
    try {
      if (ersponse.statusCode == 200) {
        return Success(
          code: 200,
          response: acountFromJson(ersponse.body),
        );
      }
      return Failare(code: 100, errorResponse: 'status code = 100');
    } on HttpException {
      return Failare(
        code: 101,
        errorResponse: 'status code = 101',
      );
    } on FormatException {
      return Failare(
        code: 102,
        errorResponse: 'status code = 102',
      );
    } catch (e) {
      return Failare(
        code: 103,
        errorResponse: 'status code = 103',
      );
    }
  }
}
