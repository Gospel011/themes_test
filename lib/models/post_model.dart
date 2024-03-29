// ignore_for_file: public_member_api_docs, sort_constructors_first

class Post {
  // name
  final String name;

  // handle
  final String handle;

  // text
  final String text;
  Post({
    required this.name,
    required this.handle,
    required this.text,
  });

  Post copyWith({
    String? name,
    String? handle,
    String? text,
  }) {
    return Post(
      name: name ?? this.name,
      handle: handle ?? this.handle,
      text: text ?? this.text,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'handle': handle,
      'text': text,
    };
  }

  factory Post.fromMap(Map<String, dynamic> map) {
    return Post(
      name: map['name'] as String,
      handle: map['handle'] as String,
      text: map['text'] as String,
    );
  }
}
