part of 'product_bloc.dart';

@immutable
abstract class ProductState {}

class ProductInitial extends ProductState {}

class ProductInitialized extends ProductState {
  final ProductInitializedMessage;
  ProductInitialized(this.ProductInitializedMessage);
  @override
  List<Object> get props => [];
}

class ProductError extends ProductState {
  final ProductErrorMessage;
  ProductError(this.ProductErrorMessage);
  @override
  List<Object> get props => [];
}
