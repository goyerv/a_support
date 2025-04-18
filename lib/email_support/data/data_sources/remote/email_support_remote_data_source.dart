// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







import 'dart:typed_data';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:http/retry.dart';

import '../../../../web_core/error/exceptions.dart';
import '../../models/email_support_model.dart';
import 'email_support/request.pb.dart';
import 'email_support/response.pb.dart';



abstract class EmailSupportRemoteDataSource {
  Future<EmailSupportModel> sendSupportTicket(String? email, String? issue, List<String>? images);
}


class EmailSupportRemoteDataSourceImpl implements EmailSupportRemoteDataSource {

  EmailSupportRemoteDataSourceImpl();
  

  final http.Client client = Client();


  @override
  Future<EmailSupportModel> sendSupportTicket(String? email, String? issue, List<String>? images) async {
    
    final client_ = RetryClient(client);

    var request = RequestMessage();
    
    request.version = 1;
    request.emailAddress = email!;
    request.issue = issue!;
    request.images.addAll(images!.cast<String>());

    Uint8List body = request.writeToBuffer();


    try {
      final response = await client_.post(
        Uri.parse('https://static.goyerv.com/v1/support/email_support'),
        headers: {'content-type': 'application/x-protobuf'},
        body: body,
      );

      if (response.statusCode == 200) {
        var post = ResponseMessage.fromBuffer(response.bodyBytes);
        return EmailSupportModel.fromJson(post.writeToJsonMap());
        
      } else {
        throw ServerException();

      }

    } finally {
      client_.close();

    }

  }


}