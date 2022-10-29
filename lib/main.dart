import 'package:contact_bloc/features/bloc_example/bloc/example_bloc.dart';
import 'package:contact_bloc/features/bloc_example/bloc_example_page.dart';
import 'package:contact_bloc/features/bloc_example/bloc_freezed/example_freezed_bloc.dart';
import 'package:contact_bloc/features/bloc_example/bloc_freezed_example.dart';
import 'package:contact_bloc/features/contacts/bloc/contact_list_bloc.dart';
import 'package:contact_bloc/features/contacts/list/contact_list_page.dart';
import 'package:contact_bloc/features/contacts/register/bloc/contact_register_bloc.dart';
import 'package:contact_bloc/features/contacts/register/contact_register_page.dart';
import 'package:contact_bloc/features/contacts/update/bloc/contact_update_bloc.dart';
import 'package:contact_bloc/features/contacts/update/contact_update_page.dart';
import 'package:contact_bloc/features/contacts_cubit/list/contacts_list_cubit_page.dart';
import 'package:contact_bloc/features/contacts_cubit/list/cubit/contact_list_cubit.dart';
import 'package:contact_bloc/features/contacts_cubit/register/contact_list_register_page.dart';
import 'package:contact_bloc/features/contacts_cubit/register/cubit/contact_list_register_cubit.dart';
import 'package:contact_bloc/home/home_page.dart';
import 'package:contact_bloc/models/contact_model.dart';
import 'package:contact_bloc/repositories/contacts_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const ContactBlocApp());
}

class ContactBlocApp extends StatelessWidget {
  const ContactBlocApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => Dio(BaseOptions(connectTimeout: 10000)),
      child: RepositoryProvider(
        create: (context) => ContactsRepository(dio: context.read<Dio>()),
        child: MaterialApp(
          title: 'Contact Bloc',
          initialRoute: HomePage.router,
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          routes: {
            HomePage.router: (context) => const HomePage(),
            BlocExamplePage.router: (context) => BlocProvider(
                  create: (_) => ExampleBloc()
                    ..add(
                      ExampleFindNameEvent(),
                    ),
                  child: const BlocExamplePage(),
                ),
            BlocFreezedExample.router: (context) {
              return BlocProvider(
                create: (context) {
                  return ExampleFreezedBloc()
                    ..add(const ExampleFreezedEvent.findNames());
                },
                child: const BlocFreezedExample(),
              );
            },
            ContactListPage.router: (context) {
              return BlocProvider(
                create: (context) {
                  return ContactListBloc(
                    repository: context.read<ContactsRepository>(),
                  )..add(const ContactListEvent.findAll());
                },
                child: const ContactListPage(),
              );
            },
            ContactRegisterPage.router: (context) {
              return BlocProvider(
                create: (context) {
                  return ContactRegisterBloc(
                    repository: context.read<ContactsRepository>(),
                  );
                },
                child: const ContactRegisterPage(),
              );
            },
            ContactUpdatePage.router: (context) {
              final contact =
                  ModalRoute.of(context)!.settings.arguments! as ContactModel;

              return BlocProvider(
                create: (context) {
                  return ContactUpdateBloc(
                    contactsRepository: context.read<ContactsRepository>(),
                  );
                },
                child: ContactUpdatePage(contact: contact),
              );
            },
            ContactsListCubitPage.router: (context) {
              return BlocProvider(
                create: (context) {
                  return ContactListCubit(
                    contactsRepository: context.read<ContactsRepository>(),
                  )..findAll();
                },
                child: const ContactsListCubitPage(),
              );
            },
            ContactListRegisterPage.router: (context) {
              final blocProvider = BlocProvider(
                create: (context) {
                  return ContactListRegisterCubit(
                    repository: context.read<ContactsRepository>(),
                  );
                },
                child: const ContactListRegisterPage(),
              );

              if (ModalRoute.of(context) != null) {
                if (ModalRoute.of(context)!.settings.arguments != null) {
                  final contact = ModalRoute.of(context)!.settings.arguments!
                      as ContactModel;

                  return BlocProvider(
                    create: (context) {
                      return ContactListRegisterCubit(
                        repository: context.read<ContactsRepository>(),
                      );
                    },
                    child: ContactListRegisterPage(contact: contact),
                  );
                } else {
                  return blocProvider;
                }
              } else {
                return blocProvider;
              }
            }
          },
        ),
      ),
    );
  }
}
