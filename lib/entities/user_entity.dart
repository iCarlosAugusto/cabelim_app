import 'package:json_annotation/json_annotation.dart';
part 'user_entity.g.dart';

@JsonSerializable()
class UserEntity {
  final String name, email;
  final String? photoUrl, phoneNumber;

  UserEntity({required this.name, required this.email, this.photoUrl, this.phoneNumber});

  factory UserEntity.fromJson(Map<String, dynamic> json) => _$UserEntityFromJson(json);

  Map<String, dynamic> toJson() => _$UserEntityToJson(this);
}