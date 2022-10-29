import 'package:bloc/bloc.dart';

part 'example_event.dart';
part 'example_state.dart';

class ExampleBloc extends Bloc<ExampleEvent, ExampleState> {
  ExampleBloc() : super(ExampleInitialState()) {
    on<ExampleFindNameEvent>(_findNames);
    on<ExampleRemoveNameEvent>(_removeNames);
    on<ExampleAddNameEvent>(_addName);
  }

  Future<void> _findNames(ExampleFindNameEvent event, Emitter emit) async {
    final names = ['Luis', 'João', 'Maria', 'José'];
    await Future<void>.delayed(const Duration(seconds: 4));
    emit(ExampleStateData(names: names));
  }

  Future<void> _removeNames(
    ExampleRemoveNameEvent event,
    Emitter<ExampleState> emit,
  ) async {
    final exampleBloc = state;
    if (exampleBloc is ExampleStateData) {
      final names = [...exampleBloc.names];
      names.retainWhere((name) => name != event.name);
      emit(ExampleStateData(names: names));
    }
  }

  Future<void> _addName(
    ExampleAddNameEvent event,
    Emitter<ExampleState> emit,
  ) async {
    final exampleBloc = state;

    if (exampleBloc is ExampleStateData) {
      final names = [...exampleBloc.names];
      names.add(event.name);
      emit(ExampleStateData(names: names));
    }
  }
}
