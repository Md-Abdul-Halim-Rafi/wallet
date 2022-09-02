import 'package:flutter/material.dart';

@immutable
class Wallet {
  const Wallet({
    this.id,
    required this.uid,
    required this.amount,
    required this.name,
    required this.createdAt,
    required this.updatedAt,
  });

  Wallet.fromJson(Map<String, Object?> json)
      : this(
    id: json['id']! as String,
    uid: json['u_id']! as String,
    amount: json['amount']! as int,
    name: json['name']! as String,
    createdAt: json['created_at']! as DateTime,
    updatedAt: json['updated_at']! as DateTime,
  );

  final String? id;
  final String uid;
  final int amount;
  final String name;
  final DateTime createdAt;
  final DateTime updatedAt;

  Map<String, Object?> toJson() {
    return {
      'id': id,
      'u_id': uid,
      'amount': amount,
      'name': name,
      'created_at': createdAt,
      'updated_at': updatedAt,
    };
  }
}