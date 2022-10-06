import 'dart:developer';

import 'package:dio/dio.dart';

// Future<void> getNumberFactFromNumberApi({numberFromUser}) async {
//   var url = Uri.parse("http://numbersapi.com/$numberFromUser?json");
//   var responseFromNumberApi = await http.get(url);
//   print(responseFromNumberApi.body.toString());
// }

Future<dynamic> numberFactFromNumberApi(number) async {
  final dio = Dio();
  var url = "http://numbersapi.com/$number?json";

  final Response responseFronNumberApi = await dio.get(url);
  log(responseFronNumberApi.data.toString());
  final numberFact = responseFronNumberApi.data;
  log(numberFact["number"].toString());
  return numberFact["number"];
}
