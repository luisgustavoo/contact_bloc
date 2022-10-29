import 'package:bloc_test/bloc_test.dart';
import 'package:contact_bloc/features/contacts_cubit/list/cubit/contact_list_cubit.dart';
import 'package:contact_bloc/models/contact_model.dart';
import 'package:contact_bloc/repositories/contacts_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockContactsRepository extends Mock implements ContactsRepository {}

void main() {
  late ContactsRepository repository;
  late ContactListCubit cubit;
  late List<ContactModel> contacts;

  setUp(
    () {
      repository = MockContactsRepository();
      cubit = ContactListCubit(contactsRepository: repository);
      contacts = const [
        ContactModel(name: 'Test', email: 'test@domain.com'),
        ContactModel(name: 'Test 2', email: 'test2@domain.com'),
      ];
    },
  );

  blocTest(
    'Deve retornar a lista de contatos',
    build: () => cubit,
    act: (cubit) => cubit.findAll(),
    setUp: () => when(() => repository.findAll()).thenAnswer(
      (invocation) async => contacts,
    ),
    expect: () => [
      const ContactListCubitState.loading(),
      ContactListCubitState.data(contacts: contacts)
    ],
  );
}
