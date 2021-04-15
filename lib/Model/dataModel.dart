//Manual

// class User {
//   Data data;
//   Support support;

//   User({this.data, this.support});

//   Map<String,dynamic> toJson() =>{
//     'data' : data.toJson(),
//     'support' : support.toJson()
//   };

//   User.fromJson(Map <String,dynamic> json) : 
//   data = Data.fromJson(json['data']),
//   support = Support.fromJson(json['support']); 
//   }
  
// class Data{
//     int id;
//     String email;
//     String first_name;
//     String last_name;
//     String avatar;
  
//     Data({this.id, this.email, this.last_name, this.first_name, this.avatar});
  
//     Map <String,dynamic> toJson() =>{
//       "id" : id,
//       "email" : email,
//       "first_name" : first_name,
//       "last_name" : last_name,
//       'avatar' : avatar 
//     };
  
//     Data.fromJson(Map <String, dynamic> json) :
//     id = json['id'],
//     email = json['email'],
//     first_name = json['first_name'],
//     last_name = json['last_name'],
//     avatar = json['avatar'];
// }

// class Support{
//   String url;
//   String text;

//   Support({this.url, this.text});

//   Support.fromJson(Map<String,dynamic> json):
//   url = json['url'],
//   text = json['text'];


//   Map<String, dynamic> toJson() =>{
//     'url' : url,
//     'text' : text
//   };
// }

// Json auto

import 'package:json_annotation/json_annotation.dart';

part 'dataModel.g.dart';

@JsonSerializable(nullable: false)
class User {
    Data data;
    Support support;

    User ({this.data,this.support});

    factory User.fromJson(Map <String,dynamic> json) => _$UserFromJson(json);
    Map <String,dynamic> toJson() => _$UserToJson(this);   
}

@JsonSerializable(nullable: false)
class Data{
    int id;
    String email;
    String first_name;
    String last_name;
    String avatar;

    Data({this.id, this.email, this.first_name, this.last_name, this.avatar});

    factory Data.fromJson(Map <String,dynamic> json) => _$DataFromJson(json);
    Map<String,dynamic> toJson() => _$DataToJson(this);  
}

@JsonSerializable(nullable: false)

class Support{
  String url;
  String text;

  Support ({this.url, this.text});

  factory Support.fromJson(Map <String,dynamic> json) => _$SupportFromJson(json);
  Map<String,dynamic> toJson() => _$SupportToJson(this);
}
