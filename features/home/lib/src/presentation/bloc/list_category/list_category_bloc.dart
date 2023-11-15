import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'list_category_event.dart';
part 'list_category_state.dart';

class ListCategoryBloc extends Bloc<ListCategoryEvent, ListCategoryState> {
  ListCategoryBloc(
      // this.usecase,
      )
      : super(ListCategoryInitial()) {
    on<ListCategoryEvent>((event, emit) {});
    on<GetListCategory>(_getList);
  }

  // final GetListCategoryUseCase usecase;

  Future<void> _getList(
    GetListCategory event,
    Emitter<ListCategoryState> emit,
  ) async {
    // emit(ListCategoryLoading());
    // try {
    //   final result = await usecase();
    //   emit(ListCategoryLoaded(result));
    // } catch (e) {
    //   emit(ListCategoryError(e.toString()));
    // }
  }
}
