import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/provider/themeChange.dart';
import 'package:shopping_app/views/widget/my_address_info.dart';

Widget BuyWidget(context) {
  final provider = Provider.of<ThemeChange>(context);
  return ElevatedButton.icon(
    onPressed: () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const Address_Info(),
          ));
    },
    label: const Text("SATIN AL"),
    icon: const Icon(Icons.shopping_cart),
  );
}
