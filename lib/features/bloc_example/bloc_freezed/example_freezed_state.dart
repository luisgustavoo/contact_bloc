part of 'example_freezed_bloc.dart';

@freezed
class ExampleFreezedState with _$ExampleFreezedState {
  const factory ExampleFreezedState.initial() = _ExampleFreezedStateInitial;
  const factory ExampleFreezedState.loading() = _ExampleFreezedStateLoading;
  const factory ExampleFreezedState.data({required List<String> names}) =
      _ExampleFreezedStateData;
  const factory ExampleFreezedState.showBanner({
    required List<String> names,
    required String message,
  }) = _ExampleFreezedStateShowBanner;
}
