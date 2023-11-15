import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'list_address_event.dart';
part 'list_address_state.dart';

class ListAddressBloc extends Bloc<ListAddressEvent, ListAddressState> {
  ListAddressBloc(
      // this.usecase
      )
      : super(ListAddressInitial()) {
    on<ListAddressEvent>((event, emit) {});
    on<GetListAddress>(_getList);
  }

  // final GetListAddressUseCase usecase;

  Future<void> _getList(
    GetListAddress event,
    Emitter<ListAddressState> emit,
  ) async {
    // emit(ListAddressLoading());
    // try {
    //   final result = await usecase();
    //   emit(ListAddressLoaded(result));
    // } catch (e) {
    //   emit(ListAddressError(e.toString()));
    // }
  }
}
