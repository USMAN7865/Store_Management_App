import 'package:json_annotation/json_annotation.dart';
import 'package:json_serializable/builder.dart';
import 'package:json_serializable/json_serializable.dart';

@JsonSerializable()
class BaseResponse {
  @JsonKey(name: "status")
  int? status;
  @JsonKey(name: "message")
  String? message;
}

@JsonSerializable()
class CustomerResponse {
  @JsonKey(name: "id")
  String? id;
  @JsonKey(name: "name")
  String? name;
  @JsonKey(name: "numofnotification")
  int? numofnotification;
}

@JsonSerializable()
class ContactResponse {
  @JsonKey(name: "phNumer")
  int? phNumber;
  @JsonKey(name: "link")
  String? link;
  @JsonKey(name: "gmail")
  String? gmail;
}

@JsonSerializable()
class Authentication extends BaseResponse {
  @JsonKey(name: "customer")
  CustomerResponse? customer;
  @JsonKey(name: "contact")
  CustomerResponse? contact;
}
