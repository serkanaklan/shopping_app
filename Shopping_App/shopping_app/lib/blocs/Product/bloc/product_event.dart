part of 'product_bloc.dart';

@immutable
abstract class ProductEvent {}

class ProductEventInitial extends ProductEvent {}

class ProductEventInitialized extends ProductEvent {}

class ProductEventError extends ProductEvent {}
