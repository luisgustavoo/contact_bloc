import 'dart:developer';

import 'package:contact_bloc/models/contact_model.dart';
import 'package:dio/dio.dart';

class ContactsRepository {
  ContactsRepository({
    required Dio dio,
  }) : _dio = dio;

  final Dio _dio;

  Future<List<ContactModel>> findAll() async {
    try {
      // final response = await _dio.get<List<dynamic>>('http://10.0.2.2:8080/contacts');
      final response =
          await _dio.get<List<dynamic>>('http://192.168.0.221:8080/contacts');

      if (response.data != null) {
        final responseList = List<Map<String, dynamic>>.from(response.data!);
        return responseList.map(ContactModel.fromMap).toList();
      }

      return <ContactModel>[];
    } on Exception {
      throw Exception();
    }
  }

  Future<void> create(ContactModel contact) async {
    try {
      await _dio.post<dynamic>(
        'http://192.168.0.221:8080/contacts',
        data: contact.toMap(),
      );
    } on Exception catch (e) {
      log('$e');
      throw Exception();
    }
  }

  Future<void> update(ContactModel contact) async {
    try {
      await _dio.put<dynamic>(
        'http://192.168.0.221:8080/contacts/${contact.id}',
        // 'http://10.0.2.2:8080/contacts/${contact.id}',
        data: contact.toMap(),
      );
    } on Exception catch (e, s) {
      log('Erro ao atualizar contato', error: e, stackTrace: s);
      throw Exception();
    }
  }

  Future<void> delete(ContactModel contact) async {
    try {
      await _dio.delete<dynamic>(
        'http://192.168.0.221:8080/contacts/${contact.id}',
      );
    } on Exception {
      throw Exception();
    }
  }
}
