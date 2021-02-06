import 'package:crypto_monitor/constants/models/api_response.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'constants/contants.dart';
import 'constants/enums/coin.dart';
import 'constants/enums/fiat.dart';
import 'home.dart';
import 'dart:convert';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }

}

class _MyAppState extends State<MyApp> {

  Future<ApiResponse> apiResponse;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crypto Monitor',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(apiResponse),
    );
  }

  @override
  void initState() {
    super.initState();
    apiResponse = fetchData();
  }

}

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

