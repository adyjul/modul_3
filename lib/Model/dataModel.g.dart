// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dataModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
    data: Data.fromJson(json['data'] as Map<String, dynamic>),
    support: Support.fromJson(json['support'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'data': instance.data,
      'support': instance.support,
    };

Data _$DataFromJson(Map<String, dynamic> json) {
  return Data(
    id: json['id'] as int,
    email: json['email'] as String,
    first_name: json['first_name'] as String,
    last_name: json['last_name'] as String,
    avatar: json['avatar'] as String,
  );
}

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'avatar': instance.avatar,
    };

Support _$SupportFromJson(Map<String, dynamic> json) {
  return Support(
    url: json['url'] as String,
    text: json['text'] as String,
  );
}

Map<String, dynamic> _$SupportToJson(Support instance) => <String, dynamic>{
      'url': instance.url,
      'text': instance.text,
    };
