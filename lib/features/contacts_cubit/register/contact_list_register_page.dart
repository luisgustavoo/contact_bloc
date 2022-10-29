import 'package:contact_bloc/features/contacts_cubit/register/cubit/contact_list_register_cubit.dart';
import 'package:contact_bloc/models/contact_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ContactListRegisterPage extends StatefulWidget {
  const ContactListRegisterPage({this.contact, Key? key}) : super(key: key);
  static const router = '/contacts/cubit/register';
  final ContactModel? contact;

  @override
  State<ContactListRegisterPage> createState() =>
      _ContactListRegisterPageState();
}

class _ContactListRegisterPageState extends State<ContactListRegisterPage> {
  late TextEditingController _contactNamecontroller;
  late TextEditingController _contactEmailController;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _contactNamecontroller = TextEditingController(
      text: widget.contact?.name,
    );
    _contactEmailController = TextEditingController(
      text: widget.contact?.email,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contato'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(hintText: 'Name'),
                controller: _contactNamecontroller,
              ),
              TextFormField(
                decoration: const InputDecoration(hintText: 'Email'),
                controller: _contactEmailController,
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () async {
                  if (widget.contact != null) {
                    final contact = ContactModel(
                      id: widget.contact!.id,
                      name: _contactNamecontroller.text,
                      email: _contactEmailController.text,
                    );
                    context.read<ContactListRegisterCubit>().update(contact);
                  } else {
                    final contact = ContactModel(
                      name: _contactNamecontroller.text,
                      email: _contactEmailController.text,
                    );
                    context.read<ContactListRegisterCubit>().register(contact);
                  }
                },
                child: BlocSelector<ContactListRegisterCubit,
                    ContactListRegisterState, bool>(
                  selector: (state) {
                    return state.maybeWhen(
                      loading: () => true,
                      orElse: () => false,
                    );
                  },
                  builder: (context, loading) {
                    if (loading) {
                      return const SizedBox(
                        height: 20,
                        width: 20,
                        child: CircularProgressIndicator(),
                      );
                    }
                    return const Text('Salvar');
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
