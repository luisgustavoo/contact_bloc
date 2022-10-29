import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:contact_bloc/models/contact_model.dart';
import 'package:contact_bloc/repositories/contacts_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_list_register_state.dart';
part 'contact_list_register_cubit.freezed.dart';

class ContactListRegisterCubit extends Cubit<ContactListRegisterState> {
  ContactListRegisterCubit({required ContactsRepository repository})
      : _repository = repository,
        super(const ContactListRegisterState.initial());

  final ContactsRepository _repository;

  Future<void> register(ContactModel contact) async {
    try {
      emit(const ContactListRegisterState.loading());
      await _repository.create(contact);
      emit(const ContactListRegisterState.success());
    } on Exception catch (e, s) {
      log('Erro ao criar contato', error: e, stackTrace: s);
      emit(const ContactListRegisterState.error());
    }
  }

  Future<void> update(ContactModel contact) async {
    try {
      emit(const ContactListRegisterState.loading());
      await _repository.update(contact);
      emit(const ContactListRegisterState.success());
    } on Exception catch (e, s) {
      log('Erro ao atualizar contato', error: e, stackTrace: s);
      emit(const ContactListRegisterState.error());
    }
  }
}
