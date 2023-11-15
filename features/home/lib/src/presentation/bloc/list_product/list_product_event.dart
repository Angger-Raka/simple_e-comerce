part of 'list_product_bloc.dart';

@immutable
sealed class ListProductEvent {}

class GetListProduct extends ListProductEvent {}
