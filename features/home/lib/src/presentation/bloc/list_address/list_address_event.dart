part of 'list_address_bloc.dart';

@immutable
sealed class ListAddressEvent {}

class GetListAddress extends ListAddressEvent {}
