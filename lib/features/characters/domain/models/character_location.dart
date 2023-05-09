import 'package:isar/isar.dart';

part 'character_location.g.dart';

@embedded
class CharacterLocation {
  final String name;
  final String url;

  const CharacterLocation({
    this.name = '',
    this.url = '',
  });

  factory CharacterLocation.fromJson(Map<String, Object?> json) => CharacterLocation(
        name: json['name'].toString(),
        url: json['url'].toString(),
      );

  Map<String, Object?> toJson() => {
        'name': name,
        'url': url,
      };
}
