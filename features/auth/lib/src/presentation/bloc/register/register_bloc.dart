import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'package:equatable/equatable.dart';

part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc(
      //this.usecase,
      )
      : super(RegisterInitial()) {
    on<RegisterEvent>((event, emit) {});
    on<Register>(_register);
  }

  Future<void> _register(
    Register event,
    Emitter<RegisterState> emit,
  ) async {}
}
