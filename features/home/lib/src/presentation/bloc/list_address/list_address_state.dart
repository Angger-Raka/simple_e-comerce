part of 'list_address_bloc.dart';

@immutable
sealed class ListAddressState {}

final class ListAddressInitial extends ListAddressState {}

final class ListAddressLoading extends ListAddressState {}

final class ListAddressLoaded extends ListAddressState {
  // final List<Address> addresses;
  //
  // ListAddressLoaded(this.addresses);
}

final class ListAddressError extends ListAddressState {
  final String message;

  ListAddressError(this.message);
}
