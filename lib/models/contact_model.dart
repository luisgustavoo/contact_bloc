import 'package:flutter/foundation.dart';

@immutable
class ContactModel {
  const ContactModel({
    required this.name,
    required this.email,
    this.id,
  });

  factory ContactModel.fromMap(Map<String, dynamic> map) {
    return ContactModel(
      id: int.parse(map['id'].toString()),
      name: map['nome'].toString(),
      email: map['email'].toString(),
    );
  }

  final int? id;
  final String name;
  final String email;

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'nome': name,
      'email': email,
    };
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    return other is ContactModel &&
        other.id == id &&
        other.name == name &&
        other.email == email;
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode ^ email.hashCode;
}
