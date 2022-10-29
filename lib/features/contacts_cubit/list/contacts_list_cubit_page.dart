import 'package:contact_bloc/core/ui/widgets/loader.dart';
import 'package:contact_bloc/features/contacts_cubit/list/cubit/contact_list_cubit.dart';
import 'package:contact_bloc/features/contacts_cubit/register/contact_list_register_page.dart';
import 'package:contact_bloc/models/contact_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ContactsListCubitPage extends StatelessWidget {
  const ContactsListCubitPage({Key? key}) : super(key: key);
  static const String router = '/contacts/cubit/list';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact Cubit Page'),
      ),
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            child: Column(
              children: [
                Loader<ContactListCubit, ContactListCubitState>(
                  selector: (state) {
                    return state.maybeWhen(
                      loading: () => true,
                      orElse: () => false,
                    );
                  },
                ),
                BlocSelector<ContactListCubit, ContactListCubitState,
                    List<ContactModel>>(
                  selector: (state) {
                    return state.maybeWhen(
                      data: (contacts) => contacts,
                      orElse: () => <ContactModel>[],
                    );
                  },
                  builder: (_, contacts) {
                    return Expanded(
                      child: RefreshIndicator(
                        onRefresh: () =>
                            context.read<ContactListCubit>().findAll(),
                        child: ListView.builder(
                          itemBuilder: (context, index) {
                            final contact = contacts[index];

                            return ListTile(
                              onTap: () {
                                Navigator.of(context).pushNamed(
                                  ContactListRegisterPage.router,
                                  arguments: contact,
                                );
                              },
                              title: Text(contact.name),
                              subtitle: Text(contact.email),
                              onLongPress: () => context
                                  .read<ContactListCubit>()
                                  .deleteContact(contact),
                            );
                          },
                          itemCount: contacts.length,
                        ),
                      ),
                    );
                  },
                )
              ],
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.of(context).pushNamed(ContactListRegisterPage.router);
        },
      ),
    );
  }
}
