import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:shopping_app/service/category/electronics.dart';

import 'customLoading.dart';

Widget Electronics_widget() {
  return FutureBuilder(
    future: electronicsService(),
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
