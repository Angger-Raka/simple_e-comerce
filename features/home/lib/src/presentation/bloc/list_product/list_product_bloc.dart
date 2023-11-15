import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'list_product_event.dart';
part 'list_product_state.dart';

class ListProductBloc extends Bloc<ListProductEvent, ListProductState> {
  ListProductBloc() : super(ListProductInitial()) {
    on<ListProductEvent>((event, emit) {});
    on<GetListProduct>(_getList);
  }

  Future<void> _getList(
    GetListProduct event,
    Emitter<ListProductState> emit,
  ) async {
    // emit(ListProductLoading());
    // try {
    //   final result = await _getListProductUseCase();
    //   emit(ListProductLoaded(result));
    // } catch (e) {
    //   emit(ListProductError(e.toString()));
    // }
  }
}
