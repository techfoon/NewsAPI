import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:news_api/models/Usermodel.dart';

import 'package:http/http.dart' as http;

class LoginApiHitter {
  int? verifiers;
  var apiData;
  Future<LoginModel> ApiGeter({required String jsonUrl}) async {
    
    var Parsed_url = Uri.parse(jsonUrl);
    var response = await http.get(Parsed_url);

    if (response.statusCode == 200) {
      log(response.body);

      var resData = jsonDecode(response.body);

      if (resData['data'] == null) {
        log("incorrect details please signup");

      
        return apiData;
      } else {
        log("API HITTED!");
        apiData = LoginModel.fromJson(resData);
        return apiData!;
      }
    } else {
      log("Api Failed");

      return apiData;
    }
  }
}
