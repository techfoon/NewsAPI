import 'dart:convert';
import 'dart:developer';

import 'package:news_api/models/Usermodel.dart';

import 'package:http/http.dart' as http;

class ApiHitter {
  var apiData;
  Future<LoginModel> ApiGeter({required String jsonUrl}) async {
    var Parsed_url = Uri.parse(jsonUrl);
    var response = await http.get(Parsed_url);

    if (response.statusCode == 200) {
      log("API HITTED!");

      log(response.body);

      var resData = jsonDecode(response.body);

      apiData = LoginModel.fromJson(resData);

      return apiData!;
    } else {
      log("Api Failed");

      return apiData!;
    }
  }
}
