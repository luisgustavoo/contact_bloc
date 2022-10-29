part of 'contact_list_bloc.dart';

@freezed
class ContactListState with _$ContactListState {
  const factory ContactListState.initial() = _ContactListStateInitial;
  const factory ContactListState.loading() = _ContactListStateLoading;
  const factory ContactListState.success() = _ContactListStateSuccess;
  const factory ContactListState.error({required String message}) =
      _ContactListStateError;
  const factory ContactListState.data({required List<ContactModel> contacts}) =
      _ContactListStateData;
}
