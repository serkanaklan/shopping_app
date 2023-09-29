import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  var ProductInitializedMessage;

  ProductBloc() : super(ProductInitial()) {
    on<ProductEvent>((event, emit) {
      // TODO: implement event handler
      emit(ProductInitialized(ProductInitializedMessage));
    });
  }
}
