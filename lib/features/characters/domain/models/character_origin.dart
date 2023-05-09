import 'package:isar/isar.dart';

part 'character_origin.g.dart';

@embedded
class CharacterOrigin {
  final String name;
  final String url;

  const CharacterOrigin({
    this.name = '',
    this.url = '',
  });

  factory CharacterOrigin.fromJson(Map<String, Object?> json) => CharacterOrigin(
    name: json['name'].toString(),
    url: json['url'].toString(),
  );

  Map<String, Object?> toJson() => {
    'name': name,
    'url': url,
  };
}
