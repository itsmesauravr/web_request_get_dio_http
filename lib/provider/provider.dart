import 'package:flutter/material.dart';
import 'package:flutter_web_request_http_dio_get/api_sevices.dart';

class HomeProvider extends ChangeNotifier {
  String text = "Number Fact";
  final numberInputController = TextEditingController();

  void ontapNumberFact() async {
    final inputNumberFromUser = numberInputController.text.toString();
    final dynamic responseReturnFromApi =
        await numberFactFromNumberApi(inputNumberFromUser);
    text = responseReturnFromApi.toString();
    notifyListeners();
  }
}
