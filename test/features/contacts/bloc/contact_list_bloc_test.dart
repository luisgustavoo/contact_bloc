import 'package:bloc_test/bloc_test.dart';
import 'package:contact_bloc/features/contacts/bloc/contact_list_bloc.dart';
import 'package:contact_bloc/models/contact_model.dart';
import 'package:contact_bloc/repositories/contacts_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockContactsRepository extends Mock implements ContactsRepository {}

void main() {
  late ContactsRepository repository;
  late ContactListBloc bloc;
  late List<ContactModel> contacts;

  setUp(
    () {
      repository = MockContactsRepository();
      bloc = ContactListBloc(repository: repository);
      contacts = const [
        ContactModel(name: 'Test', email: 'test@domain.com'),
        ContactModel(name: 'Test 2', email: 'test2@domain.com'),
      ];
    },
  );

  blocTest(
    'Deve busca os contatos',
    build: () => bloc,
    act: (bloc) => bloc.add(
      const ContactListEvent.findAll(),
    ),
    setUp: () {
      when(
        () => repository.findAll(),
      ).thenAnswer((invocation) async => contacts);
    },
    expect: () => [
      const ContactListState.loading(),
      ContactListState.data(contacts: contacts),
    ],
  );

  blocTest(
    'Deve retornar um erro busca os contatos',
    build: () => bloc,
    act: (bloc) => bloc.add(
      const ContactListEvent.findAll(),
    ),
    setUp: () => when(() => repository.findAll()).thenThrow(Exception()),
    expect: () => const [
      ContactListState.loading(),
      ContactListState.error(message: 'Erro ao buscar contatos'),
    ],
  );
}
