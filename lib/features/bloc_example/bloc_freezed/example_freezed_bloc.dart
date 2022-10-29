import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'example_freezed_state.dart';
part 'example_freezed_event.dart';

part 'example_freezed_bloc.freezed.dart';

class ExampleFreezedBloc
    extends Bloc<ExampleFreezedEvent, ExampleFreezedState> {
  ExampleFreezedBloc() : super(const ExampleFreezedState.initial()) {
    on<_ExampleFreezedEventFindNames>(_findNames);
    on<_ExampleFreezedEventAddName>(_addName);
    on<_ExampleFreezedEventRemoveName>(_removeNames);
  }

  Future<void> _findNames(
    _ExampleFreezedEventFindNames event,
    Emitter emit,
  ) async {
    emit(const ExampleFreezedState.loading());

    final names = ['Luis', 'João', 'Maria', 'José'];
    await Future<void>.delayed(const Duration(seconds: 4));
    emit(ExampleFreezedState.data(names: names));
  }

  Future<void> _addName(
    _ExampleFreezedEventAddName event,
    Emitter<ExampleFreezedState> emit,
  ) async {
    final names = state.maybeWhen(
      data: (names) => names,
      orElse: () => <String>[],
    );

    emit(
      ExampleFreezedState.showBanner(
        names: names,
        message: 'Aguarde... nome sendo inserido!!',
      ),
    );
    await Future<void>.delayed(const Duration(seconds: 2));

    final newNames = [...names];
    newNames.add(event.name);

    emit(ExampleFreezedState.data(names: newNames));
  }

  Future<void> _removeNames(
    _ExampleFreezedEventRemoveName event,
    Emitter<ExampleFreezedState> emit,
  ) async {
    final names = state.maybeWhen(
      data: (names) => names,
      orElse: () => <String>[],
    );

    emit(
      ExampleFreezedState.showBanner(
        names: names,
        message: 'Aguarde... nome sendo removido!!',
      ),
    );
    await Future<void>.delayed(const Duration(seconds: 2));

    final newNames = [...names];
    newNames.remove(event.name);

    emit(ExampleFreezedState.data(names: newNames));
  }
}
