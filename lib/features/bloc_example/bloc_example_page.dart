import 'dart:developer';

import 'package:contact_bloc/features/bloc_example/bloc/example_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocExamplePage extends StatelessWidget {
  const BlocExamplePage({Key? key}) : super(key: key);
  static const router = '/bloc/example';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bloc Exemplo'),
        actions: [
          IconButton(
            onPressed: () {
              context.read<ExampleBloc>().add(
                    ExampleAddNameEvent(name: 'Gabriel'),
                  );
            },
            icon: const Icon(
              Icons.add,
            ),
          ),
        ],
      ),
      body: BlocListener<ExampleBloc, ExampleState>(
        listenWhen: (previous, current) {
          if (previous is ExampleInitialState && current is ExampleStateData) {
            if (current.names.length > 3) {
              return true;
            }
          }
          return false;
        },
        listener: (context, state) {
          if (state is ExampleStateData) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('O quantidade de nomes é ${state.names.length}'),
              ),
            );
          }
        },
        child: Column(
          children: [
            BlocSelector<ExampleBloc, ExampleState, bool>(
              selector: (state) {
                if (state is ExampleInitialState) {
                  return true;
                }

                return false;
              },
              builder: (context, showLoader) {
                if (showLoader) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }

                return const SizedBox.shrink();
              },
            ),
            BlocConsumer<ExampleBloc, ExampleState>(
              listener: (context, state) {
                log('Estado alterado para ${state.runtimeType}');
              },
              builder: (context, state) {
                if (state is ExampleStateData) {
                  return Text('Total de nomes é ${state.names.length}');
                }
                return const SizedBox.shrink();
              },
            ),
            Expanded(
              child: BlocSelector<ExampleBloc, ExampleState, List<String>>(
                selector: (state) {
                  if (state is ExampleStateData) {
                    return state.names;
                  }

                  return <String>[];
                },
                builder: (context, names) {
                  return ListView.builder(
                    itemCount: names.length,
                    itemBuilder: (context, index) {
                      final name = names[index];

                      return ListTile(
                        onTap: () {
                          context.read<ExampleBloc>().add(
                                ExampleRemoveNameEvent(name: name),
                              );
                        },
                        title: Text(name),
                      );
                    },
                  );
                },
              ),

              // BlocBuilder<ExampleBloc, ExampleState>(
              //   builder: (context, state) {
              //     if (state is ExampleStateData) {
              //       return ListView.builder(
              //         itemCount: state.names.length,
              //         itemBuilder: (context, index) {
              //           final name = state.names[index];

              //           return ListTile(
              //             title: Text(name),
              //           );
              //         },
              //       );
              //     }
              //     return const SizedBox.shrink();

              //     // return const Center(child: CircularProgressIndicator());
              //   },
              // ),
            ),
          ],
        ),
      ),
    );
  }
}
