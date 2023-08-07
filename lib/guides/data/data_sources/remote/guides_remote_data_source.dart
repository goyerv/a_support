// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







import 'dart:convert';

import 'package:goyerv_support_web_app/web_core/auth/auth.dart';
import 'package:http/http.dart' as http;
import 'package:http/retry.dart';

import '../../../../web_core/error/exceptions.dart';
import '../../models/guides_model.dart';

abstract class GuidesRemoteDataSource {
  Future<GuidesModel> fetchGuides(bool? isFAQ, String? locale);
  Future<GuidesModel> guidesSearch(String? query, bool? isFAQ);
  Future<GuidesModel> rateGuide(String? guideID, bool? isHelpful);
}


class GuidesRemoteDataSourceImpl implements GuidesRemoteDataSource {

  final http.Client client;
  final AuthenticationFragments authFragments;

  GuidesRemoteDataSourceImpl(this.client, this.authFragments);
  

  @override
  Future<GuidesModel> fetchGuides(bool? isFAQ, String? locale) async {
    
    final _client = RetryClient(client);

    try {
      final response = await _client.post(
        Uri.https(
          'static.goyerv.com', 
          '/web/v1/Guides/fetch_guides',
          {
            'version': 1,
            'isFAQ': isFAQ,
            'locale': locale,
            'userID': await authFragments.getUserID().then((value) => value.userID),
            'accessToken': await authFragments.getAccessToken().then((value) => value.accessToken),
            'refreshToken': await authFragments.getRefreshToken().then((value) => value.refreshToken),
            'webApiKey': await authFragments.getWebApiKey().then((value) => value.webApiKey)
          }
        ),
        headers: {'content-type': 'application/json'},
      );

      if (response.statusCode == 200) {
        return GuidesModel.fromJson(json.decode(response.body));
        
      } else {
        throw ServerException();

      }

    } finally  {
      _client.close();

    }

  }




  @override
  Future<GuidesModel> guidesSearch(String? query, bool? isFAQ) async {
    
    final _client = RetryClient(client);

    try {
      final response = await _client.post(
        Uri.https(
          'static.goyerv.com', 
          '/web/v1/Guides/guides_search',
          {
            'version': 1,
            'query': query,
            'isFAQ': isFAQ,
            'userID': await authFragments.getUserID().then((value) => value.userID),
            'accessToken': await authFragments.getAccessToken().then((value) => value.accessToken),
            'refreshToken': await authFragments.getRefreshToken().then((value) => value.refreshToken),
            'webApiKey': await authFragments.getWebApiKey().then((value) => value.webApiKey)
          }
        ),
        headers: {'content-type': 'application/json'},
      );

      if (response.statusCode == 200) {
        return GuidesModel.fromJson(json.decode(response.body));
        
      } else {
        throw ServerException();

      }

    } finally  {
      _client.close();

    }

  }
  
  @override
  Future<GuidesModel> rateGuide(String? guideID, bool? isHelpful) async {
    final _client = RetryClient(client);

    try {
      final response = await _client.post(
        Uri.https(
          'static.goyerv.com', 
          '/web/v1/Guides/rate_guide',
          {
            'version': 1,
            'guideID': guideID,
            'isHelpful': isHelpful,
            'userID': await authFragments.getUserID().then((value) => value.userID),
            'accessToken': await authFragments.getAccessToken().then((value) => value.accessToken),
            'refreshToken': await authFragments.getRefreshToken().then((value) => value.refreshToken),
            'webApiKey': await authFragments.getWebApiKey().then((value) => value.webApiKey)
          }
        ),
        headers: {'content-type': 'application/json'},
      );

      if (response.statusCode == 200) {
        return GuidesModel.fromJson(json.decode(response.body));
        
      } else {
        throw ServerException();

      }

    } finally  {
      _client.close();

    }
  }




}