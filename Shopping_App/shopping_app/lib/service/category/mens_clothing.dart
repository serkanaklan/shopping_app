import 'dart:convert';

import 'package:http/http.dart' as http;

Future<List<dynamic>> mens_clothings_Service() async {
  const url = "https://fakestoreapi.com/products/category/men's%20clothing";
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
  throw Exception("Mens clothing APİ \n FAİLURE");
}
