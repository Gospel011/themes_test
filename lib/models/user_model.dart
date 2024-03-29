import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class User {
  final String name;
  final String handle;
  User({
    required this.name,
    required this.handle,
  });


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'handle': handle,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      name: map['name'] as String,
      handle: map['handle'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source) as Map<String, dynamic>);

  User copyWith({
    String? name,
    String? handle,
  }) {
    return User(
      name: name ?? this.name,
      handle: handle ?? this.handle,
    );
  }
}
