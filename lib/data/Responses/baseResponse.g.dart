// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'baseResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponse _$BaseResponseFromJson(Map<String, dynamic> json) {
  return BaseResponse(
    status: json['status'] as int?,
    message: json['message'] as String?,
  );
}

Map<String, dynamic> _$BaseResponseToJson(BaseResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };

CustomerResponse _$CustomerResponseFromJson(Map<String, dynamic> json) {
  return CustomerResponse(
    id: json['id'] as String?,
    name: json['name'] as String?,
    numofnotification: json['numofnotification'] as int?,
  );
}

Map<String, dynamic> _$CustomerResponseToJson(CustomerResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'numofnotification': instance.numofnotification,
    };

ContactResponse _$ContactResponseFromJson(Map<String, dynamic> json) {
  return ContactResponse(
    phNumber: json['phNumer'] as int?,
    link: json['link'] as String?,
    gmail: json['gmail'] as String?,
  );
}

Map<String, dynamic> _$ContactResponseToJson(ContactResponse instance) =>
    <String, dynamic>{
      'phNumer': instance.phNumber,
      'link': instance.link,
      'gmail': instance.gmail,
    };

Authentication _$AuthenticationFromJson(Map<String, dynamic> json) {
  return Authentication(
    customer: json['customer'] == null
        ? null
        : CustomerResponse.fromJson(json['customer'] as Map<String, dynamic>),
    contact: json['contact'] == null
        ? null
        : CustomerResponse.fromJson(json['contact'] as Map<String, dynamic>),
  )
    ..status = json['status'] as int?
    ..message = json['message'] as String?;
}

Map<String, dynamic> _$AuthenticationToJson(Authentication instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'customer': instance.customer,
      'contact': instance.contact,
    };
