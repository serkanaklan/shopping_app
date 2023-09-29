import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:readmore/readmore.dart';
import 'package:shopping_app/blocs/Product/bloc/product_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:shopping_app/service/products_service.dart';
import 'package:shopping_app/views/widget/customLoading.dart';

import 'buyWidget.dart';

Widget Products_Widget(context) {
  final url =
      "https://cdn.dribbble.com/users/225707/screenshots/2958729/jelly-fluid-loader.gif";
  return StatefulBuilder(builder: (context, setState) {
    return BlocBuilder<ProductBloc, ProductState>(builder: (context, state) {
      if (state is ProductError) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "LOADİNG",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700),
              ),
              SizedBox(width: 250, height: 250, child: Image.network(url)),
              const SizedBox(
                height: 100,
              ),
              const Text(
                  "For some reason the installation did not occur; \n1) Check your internet connection. \n2) API services may not be working")
            ],
          ),
        );
      }
      if (state is ProductError) {
        return const Text("ERROR");
      }
      return FutureBuilder(
        future: fetchProduct(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("${snapshot.data![index]["title"]}"),
                            content: Container(
                              child: Image.network(
                                  fit: BoxFit.contain,
                                  "${snapshot.data![index]["image"]}"),
                            ),
                            actions: [BuyWidget(context)],
                          );
                        },
                      );
                    },
                    title: Text("${snapshot.data![index]["title"]}"),
                    subtitle: ReadMoreText(
                        trimLength: 100,
                        colorClickableText: Colors.pink,
                        trimCollapsedText: 'Daha fazlasını oku',
                        trimExpandedText: 'Daha az oku',
                        "${snapshot.data![index]["description"]} ${index} "),
                    leading: CircleAvatar(
                      backgroundImage:
                          NetworkImage("${snapshot.data![index]["image"]}"),
                    ),
                    trailing: IconButton(
                        onPressed: () {
                          IconButton(
                              onPressed: () {
                                var message = SnackBar(
                                  content: Text(
                                      '${snapshot.data![index]["id"]} numarali ürün eklendi'),
                                  backgroundColor: Colors.blue,
                                  elevation: 10,
                                  behavior: SnackBarBehavior.floating,
                                  margin: EdgeInsets.all(5),
                                );
                              },
                              icon: Icon(
                                Icons.favorite,
                                color: Colors.red,
                              ));
                        },
                        icon: const Icon(Icons.favorite)),
                  ),
                  //.createElement().widget
                );
              },
            );
          } else {
            print("return Container();");
            return CustomLoading(context);
          }
        },
      );
    });
  });
}
