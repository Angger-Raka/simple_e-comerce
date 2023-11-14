import 'package:auth/auth.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'logout_event.dart';
part 'logout_state.dart';

class LogoutBloc extends Bloc<LogoutEvent, LogoutState> {
  LogoutBloc(
    this.usecase,
  ) : super(LogoutInitial()) {
    on<LogoutEvent>((event, emit) {});
  }

  final LogoutUseCase usecase;
}
