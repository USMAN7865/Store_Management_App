// ignore_for_file: depend_on_referenced_packages, unused_import, file_names

import 'package:json_annotation/json_annotation.dart';
import 'package:json_serializable/builder.dart';
import 'package:json_serializable/json_serializable.dart';
part 'baseResponse.g.dart';

@JsonSerializable()
class BaseResponse {
  @JsonKey(name: "status")
  int? status;
  @JsonKey(name: "message")
  String? message;
  BaseResponse({this.status, this.message});
}

@JsonSerializable()
class CustomerResponse {
  @JsonKey(name: "id")
  String? id;
  @JsonKey(name: "name")
  String? name;
  @JsonKey(name: "numofnotification")
  int? numofnotification;

  CustomerResponse({this.id, this.name, this.numofnotification});

  factory CustomerResponse.fromJson(Map<String, dynamic> json) =>
      _$CustomerResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerResponseToJson(this);
}

@JsonSerializable()
class ContactResponse {
  @JsonKey(name: "phNumer")
  int? phNumber;
  @JsonKey(name: "link")
  String? link;
  @JsonKey(name: "gmail")
  String? gmail;
  ContactResponse({this.phNumber, this.link, this.gmail});

  factory ContactResponse.fromJson(Map<String, dynamic> json) =>
      _$ContactResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ContactResponseToJson(this);
}

@JsonSerializable()
class Authentication extends BaseResponse {
  @JsonKey(name: "customer")
  CustomerResponse? customer;
  @JsonKey(name: "contact")
  CustomerResponse? contact;
  Authentication({this.customer, this.contact});

  factory Authentication.fromJson(Map<String, dynamic> json) =>
      _$AuthenticationFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AuthenticationToJson(this);
}
