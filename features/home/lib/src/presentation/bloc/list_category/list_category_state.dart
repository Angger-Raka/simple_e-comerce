part of 'list_category_bloc.dart';

@immutable
sealed class ListCategoryState {}

final class ListCategoryInitial extends ListCategoryState {}

final class ListCategoryLoading extends ListCategoryState {}

final class ListCategoryLoaded extends ListCategoryState {
  // final List<Category> categories;

  // ListCategoryLoaded(this.categories);
}

final class ListCategoryError extends ListCategoryState {
  final String message;

  ListCategoryError(this.message);
}
