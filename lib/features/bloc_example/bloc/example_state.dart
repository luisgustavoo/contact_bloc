part of 'example_bloc.dart';

abstract class ExampleState {}

class ExampleInitialState extends ExampleState {}

class ExampleStateData extends ExampleState {
  ExampleStateData({
    required this.names,
  });
  List<String> names;
}
