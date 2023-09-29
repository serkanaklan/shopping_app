import 'dart:convert';

import 'package:http/http.dart' as http;

Future<List<dynamic>> jewerlyService() async {
  const url = "https://fakestoreapi.com/products/category/jewelery";
  var JData = await http.get(Uri.parse(url));
  try {
    if (JData.statusCode == 200) {
      print(JData.body.toString());
      return jsonDecode(JData.body);
    } else {
      throw Exception("FAİLURE");
    }
  } catch (e) {
    Exception(e.toString());
    print("${e.toString()}");
  }
  throw Exception("JEWERLY APİ \n FAİLURE");
}
