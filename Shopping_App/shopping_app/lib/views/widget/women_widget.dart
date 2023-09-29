import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:shopping_app/views/widget/customLoading.dart';

import '../../service/category/womens_clothing.dart';

Widget Womens_Clothing_widget() {
  return FutureBuilder(
    future: womens_clothing(),
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
