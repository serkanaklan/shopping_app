import 'dart:convert';

import 'package:http/http.dart' as http;

Future<List<dynamic>> fetchProduct() async {
  const url = "https://fakestoreapi.com/products";
  final response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    print(response.body.toString());
    return jsonDecode(response.body);
  } else {
    print("response codu : ${response.statusCode}");
  }
  throw Exception("FAİLURE");
}
