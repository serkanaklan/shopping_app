import 'package:flutter/material.dart';
import 'package:shopping_app/model/category_drawer_model.dart';
import 'package:shopping_app/views/Electronics.dart';
import 'package:shopping_app/views/Jewerly.dart';
import 'package:shopping_app/views/products.dart';

import '../mens_clothing.dart';
import '../women_clothing.dart';

Widget drawer(context) {
  List category = [
    const Jewerly(),
    const Mens_clothng(),
    const WomenClothhing(),
    const Electronics()
  ];
  final List<CategoryDrawer> categoryDrawer = List.generate(
      category.length, (index) => CategoryDrawer("${category[index]}"));
  return Drawer(
    child: ListView.builder(
      itemCount: categoryDrawer.length,
      itemBuilder: (context, index) {
        return ListTile(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => category[index],
                ));
          },
          title: Text("${categoryDrawer[index].categoryName}"),
        );
      },
    ),
  );
}
