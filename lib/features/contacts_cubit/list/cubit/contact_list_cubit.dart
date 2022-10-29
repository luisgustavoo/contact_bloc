import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:contact_bloc/models/contact_model.dart';
import 'package:contact_bloc/repositories/contacts_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_list_cubit.freezed.dart';
part 'contact_list_cubit_state.dart';

class ContactListCubit extends Cubit<ContactListCubitState> {
  ContactListCubit({required ContactsRepository contactsRepository})
      : _contactsRepository = contactsRepository,
        super(const ContactListCubitState.initial());
  final ContactsRepository _contactsRepository;

  Future<void> findAll() async {
    try {
      emit(const ContactListCubitState.loading());
      final contacts = await _contactsRepository.findAll();
      // await Future<void>.delayed(const Duration(seconds: 1));
      emit(ContactListCubitState.data(contacts: contacts));
    } on Exception catch (e, s) {
      log('Erro ao busca dados', error: e, stackTrace: s);
      emit(const ContactListCubitState.error(message: 'Erro ao buscar dados'));
    }
  }

  Future<void> deleteContact(ContactModel contact) async {
    try {
      emit(const _$_Loading());
      await _contactsRepository.delete(contact);
      findAll();
    } on Exception catch (e) {
      log('$e');
      emit(const _$_Error(message: 'Erro ao deletar contato'));
    }
  }
}
