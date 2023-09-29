import 'dart:convert';

import 'package:http/http.dart' as http;

Future<List<dynamic>> electronicsService() async {
  const url = "https://fakestoreapi.com/products/category/electronics";
  var EData = await http.get(Uri.parse(url));
  try {
    if (EData.statusCode == 200) {
      print(EData.body.toString());
      return jsonDecode(EData.body);
    } else {
      throw Exception("FAİLURE");
    }
  } catch (e) {
    Exception(e.toString());
    print("${e.toString()}");
  }
  throw Exception("Electronics APİ \n FAİLURE");
}
