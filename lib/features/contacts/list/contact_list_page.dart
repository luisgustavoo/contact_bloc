import 'package:contact_bloc/core/ui/widgets/loader.dart';
import 'package:contact_bloc/features/contacts/bloc/contact_list_bloc.dart';
import 'package:contact_bloc/features/contacts/register/contact_register_page.dart';
import 'package:contact_bloc/features/contacts/update/contact_update_page.dart';
import 'package:contact_bloc/models/contact_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ContactListPage extends StatelessWidget {
  const ContactListPage({Key? key}) : super(key: key);

  static const router = '/contacts/list';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact List'),
      ),
      body: BlocListener<ContactListBloc, ContactListState>(
        listenWhen: (previous, current) {
          return current.maybeWhen(
            error: (message) => true,
            orElse: () => false,
          );
        },
        listener: (context, state) {
          state.whenOrNull(
            error: (error) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content:
                      Text(error, style: const TextStyle(color: Colors.white)),
                  backgroundColor: Colors.red,
                ),
              );
            },
          );
        },
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              child: Column(
                children: [
                  Loader<ContactListBloc, ContactListState>(
                    selector: (state) {
                      return state.maybeWhen(
                        loading: () => true,
                        orElse: () => false,
                      );
                    },
                  ),
                  Expanded(
                    child: BlocSelector<ContactListBloc, ContactListState,
                        List<ContactModel>>(
                      selector: (state) {
                        return state.maybeWhen(
                          data: (contacts) => contacts,
                          orElse: () => <ContactModel>[],
                        );
                      },
                      builder: (context, contacts) {
                        return RefreshIndicator(
                          onRefresh: () async {
                            context.read<ContactListBloc>().add(
                                  const ContactListEvent.findAll(),
                                );
                          },
                          child: ListView.builder(
                            // physics: const NeverScrollableScrollPhysics(),
                            itemCount: contacts.length,
                            itemBuilder: (context, index) {
                              final contact = contacts[index];
                              return Dismissible(
                                key: Key(index.toString()),
                                direction: DismissDirection.endToStart,
                                background: Container(
                                  alignment: Alignment.centerRight,
                                  color: Colors.red,
                                  child: const Icon(
                                    Icons.delete,
                                    color: Colors.white,
                                  ),
                                ),
                                onDismissed: (direction) {
                                  context.read<ContactListBloc>().add(
                                        ContactListEvent.delete(
                                          contact: contact,
                                        ),
                                      );
                                },
                                child: ListTile(
                                  title: Text(contact.name),
                                  subtitle: Text(contact.email),
                                  onTap: () async {
                                    final contactListBloc =
                                        context.read<ContactListBloc>();
                                    await Navigator.of(context).pushNamed(
                                      ContactUpdatePage.router,
                                      arguments: contact,
                                    );

                                    contactListBloc
                                        .add(const ContactListEvent.findAll());
                                  },
                                ),
                              );
                            },
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final contactListBloc = context.read<ContactListBloc>();

          await Navigator.of(context).pushNamed(ContactRegisterPage.router);

          contactListBloc.add(const ContactListEvent.findAll());
        },
        child: const Icon(Icons.add),
      ),
    );

    // return Scaffold(
    //   appBar: AppBar(
    //     title: const Text('Contact List'),
    //   ),
    //   body: BlocBuilder<ContactListBloc, ContactListState>(
    //     builder: (context, state) {
    //       return state.maybeWhen(
    //         data: (contacts) {
    //           return ListView.builder(
    //             itemCount: contacts.length,
    //             itemBuilder: (context, index) {
    //               final contact = contacts[index];
    //               return ListTile(
    //                 title: Text(contact.name),
    //                 subtitle: Text(contact.email),
    //               );
    //             },
    //           );
    //         },
    //         loading: () => const Center(
    //           child: CircularProgressIndicator(),
    //         ),
    //         error: (message) => Center(
    //           child: Text(message),
    //         ),
    //         orElse: () => const Center(
    //           child: Text('Nenhum contato cadastrado'),
    //         ),
    //       );
    //     },
    //   ),
    // );
  }
}
