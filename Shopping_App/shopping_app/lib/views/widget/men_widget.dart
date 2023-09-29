import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

import '../../service/category/mens_clothing.dart';
import 'customLoading.dart';

Widget Mens_Clothing_widget() {
  return FutureBuilder(
    future: mens_clothings_Service(),
    builder: (context, snapshot) {
      if (snapshot.hasData) {
        return ListView.builder(
          itemCount: snapshot.data!.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text("${snapshot.data![index]["title"]}"),
                subtitle: ReadMoreText(
                    "${snapshot.data![index]["description"]}",
                    trimLength: 20,
                    colorClickableText: Colors.amber,
                    trimCollapsedText: 'Daha fazlasını oku',
                    trimExpandedText: 'Daha az oku',
                    trimMode: TrimMode.Length),
              ),
            );
          },
        );
      } else {
        return CustomLoading(context);
      }
    },
  );
}
