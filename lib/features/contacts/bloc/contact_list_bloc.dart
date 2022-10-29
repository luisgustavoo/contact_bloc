import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:contact_bloc/models/contact_model.dart';
import 'package:contact_bloc/repositories/contacts_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_list_bloc.freezed.dart';
part 'contact_list_event.dart';
part 'contact_list_state.dart';

class ContactListBloc extends Bloc<ContactListEvent, ContactListState> {
  ContactListBloc({required ContactsRepository repository})
      : _repository = repository,
        super(const ContactListState.initial()) {
    on<_ContactListEventFindAll>(_findAll);
    on<_ContactListEventDelete>(_delete);
  }
  final ContactsRepository _repository;

  Future<void> _findAll(
    _ContactListEventFindAll event,
    Emitter<ContactListState> emit,
  ) async {
    try {
      emit(const ContactListState.loading());
      // await Future<void>.delayed(const Duration(seconds: 1));
      final contacts = await _repository.findAll();
      // throw Exception();
      emit(ContactListState.data(contacts: contacts));
    } on Exception catch (e, s) {
      log('Erro ao buscar contatos', error: e, stackTrace: s);
      emit(const ContactListState.error(message: 'Erro ao buscar contatos'));
    }
  }

  Future<void> _delete(
    _ContactListEventDelete event,
    Emitter<ContactListState> emit,
  ) async {
    try {
      // emit(const ContactListState.loading());
      await _repository.delete(event.contact);
      // emit(const ContactListState.success());

    } on Exception catch (e, s) {
      log('Erro ao deletar contato', error: e, stackTrace: s);
      emit(const ContactListState.error(message: 'Erro ao deletar contato'));
    }
  }
}
