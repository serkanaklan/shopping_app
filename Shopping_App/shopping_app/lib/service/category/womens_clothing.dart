import 'dart:convert';

import 'package:http/http.dart' as http;

Future<List<dynamic>> womens_clothing() async {
  const url = "https://fakestoreapi.com/products/category/women's%20clothing";
  var WomensData = await http.get(Uri.parse(url));
  try {
    if (WomensData.statusCode == 200) {
      return jsonDecode(WomensData.body);
    } else {
      print("${WomensData.statusCode}");
    }
  } catch (e) {
    throw Exception("FAİLURE");
  }
  throw Exception("Women's clothing APİ \n FAİLURE");
}
