import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:crypto_monitor/constants/contants.dart';
import 'package:crypto_monitor/constants/enums/coin.dart';
import 'package:crypto_monitor/constants/enums/fiat.dart';
import 'package:crypto_monitor/constants/models/api_response.dart';

Future<ApiResponse> fetchData() async {

  String url = requestUrl +
      "?tsyms=" + allFiatCommaSeparated() +
      "&fsyms=" + allCoinsCommaSeparated();

  final response = await http.get(url);

  if (response.statusCode == 200) {
    return ApiResponse.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load data');
  }
}
