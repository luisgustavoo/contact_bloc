import 'package:bloc/bloc.dart';
import 'package:contact_bloc/models/contact_model.dart';
import 'package:contact_bloc/repositories/contacts_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_register_state.dart';
part 'contact_register_event.dart';
part 'contact_register_bloc.freezed.dart';

class ContactRegisterBloc
    extends Bloc<ContactRegisterEvent, ContactRegisterState> {
  ContactRegisterBloc({required ContactsRepository repository})
      : _repository = repository,
        super(const ContactRegisterState.initial()) {
    on<_Save>(_save);
  }

  final ContactsRepository _repository;

  Future<void> _save(ContactRegisterEvent event, Emitter emit) async {
    try {
      emit(const ContactRegisterState.loading());
      await Future<void>.delayed(const Duration(seconds: 2));

      final contactModel = ContactModel(name: event.name, email: event.email);
      await _repository.create(contactModel);
      emit(const ContactRegisterState.success());
    } on Exception {
      emit(const ContactRegisterState.error(message: 'Erro ao cadastrar'));
    }
  }
}
