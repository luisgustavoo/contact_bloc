import 'package:contact_bloc/core/ui/widgets/contact_bloc_button.dart';
import 'package:contact_bloc/features/bloc_example/bloc_example_page.dart';
import 'package:contact_bloc/features/bloc_example/bloc_freezed_example.dart';
import 'package:contact_bloc/features/contacts/list/contact_list_page.dart';
import 'package:contact_bloc/features/contacts_cubit/list/contacts_list_cubit_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  static const router = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: GridView(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: [
          ContactBlocButton(
            text: 'Exemplo',
            onPressed: () {
              Navigator.of(context).pushNamed(BlocExamplePage.router);
            },
          ),
          ContactBlocButton(
            text: 'Exemplo Freezed',
            onPressed: () {
              Navigator.of(context).pushNamed(BlocFreezedExample.router);
            },
          ),
          ContactBlocButton(
            text: 'Exemplo Contact',
            onPressed: () {
              Navigator.of(context).pushNamed(ContactListPage.router);
            },
          ),
          ContactBlocButton(
              text: 'Exemplo Cubit',
              onPressed: () {
                Navigator.of(context).pushNamed(ContactsListCubitPage.router);
              }),
        ],
      ),
    );
  }
}
