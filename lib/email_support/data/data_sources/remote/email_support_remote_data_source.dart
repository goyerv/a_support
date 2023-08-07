// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







import 'dart:convert';

import 'package:goyerv_support_web_app/web_core/auth/auth.dart';
import 'package:http/http.dart' as http;
import 'package:http/retry.dart';

import '../../../../web_core/error/exceptions.dart';
import '../../models/email_support_model.dart';



abstract class EmailSupportRemoteDataSource {
  Future<EmailSupportModel> sendSupportTicket(String? email, String? issue, List<String>? images);
}


class EmailSupportRemoteDataSourceImpl implements EmailSupportRemoteDataSource {

  final http.Client client;
  final AuthenticationFragments authFragments;

  EmailSupportRemoteDataSourceImpl(this.client, this.authFragments);
  
  @override
  Future<EmailSupportModel> sendSupportTicket(String? email, String? issue, List<String>? images) async {
    
    final _client = RetryClient(client);

    try {
      final response = await _client.post(
        Uri.https(
          'static.goyerv.com', 
          '/web/v1/email_support/send_support_ticket',
          {
            'version': 1,
            'email': email,
            'issue': issue,
            'images': images,
            'userID': await authFragments.getUserID().then((value) => value.userID),
            'accessToken': await authFragments.getAccessToken().then((value) => value.accessToken),
            'refreshToken': await authFragments.getRefreshToken().then((value) => value.refreshToken),
            'webApiKey': await authFragments.getWebApiKey().then((value) => value.webApiKey)
          }
        ),
        headers: {'content-type': 'application/json'},
      );

      if (response.statusCode == 200) {
        return EmailSupportModel.fromJson(json.decode(response.body));
        
      } else {
        throw ServerException();

      }

    } finally  {
      _client.close();

    }

  }


}