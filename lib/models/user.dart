// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:wallet_manager/models/task.dart';
import 'package:wallet_manager/models/wallet.dart';

class UserModel {
  final String id;
  final String name;
  final String email;
  final String password;
  final WalletModel wallet;
  final List<TaskModel> tasks;
  UserModel({
    required this.id,
    required this.name,
    required this.email,
    required this.password,
    required this.wallet,
    required this.tasks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'email': email,
      'password': password,
      'wallet': wallet.toMap(),
      'tasks': tasks.map((x) => x.toMap()).toList(),
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'] as String,
      name: map['name'] as String,
      email: map['email'] as String,
      password: map['password'] as String,
      wallet: WalletModel.fromMap(map['wallet'] as Map<String,dynamic>),
      tasks: List<TaskModel>.from((map['tasks'] as List<int>).map<TaskModel>((x) => TaskModel.fromMap(x as Map<String,dynamic>),),),
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) => UserModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'UserModel(id: $id, name: $name, email: $email, password: $password, wallet: $wallet, tasks: $tasks)';
  }
}
