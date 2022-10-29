part of 'contact_list_register_cubit.dart';

@freezed
class ContactListRegisterState with _$ContactListRegisterState {
  const factory ContactListRegisterState.initial() = _Initial;
  const factory ContactListRegisterState.loading() = _Loading;
  const factory ContactListRegisterState.error() = _Error;
  const factory ContactListRegisterState.success() = _Success;
}
