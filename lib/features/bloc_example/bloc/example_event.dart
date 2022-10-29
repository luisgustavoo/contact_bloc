part of 'example_bloc.dart';

abstract class ExampleEvent {}

class ExampleFindNameEvent extends ExampleEvent {}

class ExampleAddNameEvent extends ExampleEvent {
  ExampleAddNameEvent({
    required this.name,
  });
  final String name;
}

class ExampleRemoveNameEvent extends ExampleEvent {
  ExampleRemoveNameEvent({
    required this.name,
  });
  final String name;
}
