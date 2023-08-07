// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







import '../../domain/entity/email_support_entity.dart';

class EmailSupportModel extends EmailSupportEntity {

  const EmailSupportModel({bool? supportRequestSent}) : super(supportRequestSent: supportRequestSent);

  factory EmailSupportModel.fromJson(Map<String, dynamic> json) {
    return EmailSupportModel(supportRequestSent: json['supportRequestSent']);
  }

}