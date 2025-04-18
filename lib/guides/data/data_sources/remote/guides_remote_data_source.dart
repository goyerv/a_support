// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







import 'dart:typed_data';

import 'package:http/http.dart' as http;
import 'package:http/retry.dart';

import '../../../../web_core/error/exceptions.dart';
import '../../models/guides_model.dart';
import 'guide_search/request.pb.dart';
import 'guide_search/response.pb.dart';
import 'rate_guide/request.pb.dart';
import 'support_search/request.pb.dart';
import 'support_search/response.pb.dart';

abstract class GuidesRemoteDataSource {
  

  /// Searches the query locally and Remotely(Database). Locally, it searches
  /// for guide articles that best matches the query. Remotely, it searches for
  /// community discussions that best matches the query.
  /// This method returns a list of community discussion headlines which is then 
  /// combined with another list of guide article headlines (locally gotten), 
  /// then both lists are merged into one before displaying to the users.
  Future<GuidesModel> supportSearch(String? query);

  

  /// If the user clicks on a community discussion headline, then they'll be
  /// taken to another page which call this method in a Bloc Event from the
  /// init(). This method fetches only community discussions but with a bit
  /// information like date_published, discuss links which takes the user 
  /// directly to the community page of that discussion, headline, body and
  /// discussionID.
  Future<GuidesModel> guidesSearch(String? query); 


  /// Rates each guide article remotely. 
  /// Do remember that you also have to manually enter each article on the
  /// db by it's HEADLINE. The guideID below isn't some uuid, but the guide's
  /// headline. So be sure that the headline makes sense cause changing it is
  /// gonna be a lot of work.
  Future<GuidesModel> rateGuide(String? guideID, bool? isHelpful);

}


class GuidesRemoteDataSourceImpl implements GuidesRemoteDataSource {


  GuidesRemoteDataSourceImpl();
  
  final http.Client client = http.Client();




  @override
  Future<GuidesModel> supportSearch(String? query) async {

    final client_ = RetryClient(client);

    var request = SupportSearchRequestMessage();

    request.version = 1;
    request.query = query!;

    Uint8List body = request.writeToBuffer();


    try {
      final response = await client_.post(
        Uri.parse('https://static.goyerv.com/v1/support/search_support'),
        headers: {'content-type': 'application/x-protobuf'},
        body: body,
      );

      if (response.statusCode == 200) {
        var post = SupportSearchResponseMessage.fromBuffer(response.bodyBytes);
        return GuidesModel.fromJson(post.writeToJsonMap());
        
      } else {
        throw ServerException();

      }

    } finally {
      client_.close();

    }

  }




  @override
  Future<GuidesModel> guidesSearch(String? query) async {

    final client_ = RetryClient(client);

    var request = GuideSearchRequestMessage();

    request.version = 1;
    request.query = query!;

    Uint8List body = request.writeToBuffer();


    try {
      final response = await client_.post(
        Uri.parse('https://static.goyerv.com/v1/support/guides_search'),
        headers: {'content-type': 'application/x-protobuf'},
        body: body,
      );

      if (response.statusCode == 200) {
        var post = GuideSearchResponseMessage.fromBuffer(response.bodyBytes);
        return GuidesModel.fromJson(post.writeToJsonMap());
        
      } else {
        throw ServerException();

      }

    } finally {
      client_.close();

    }



  }
  





  @override
  Future<GuidesModel> rateGuide(String? guideID, bool? isHelpful) async {

    final client_ = RetryClient(client);

    var request = RateGuideRequestMessage();

    request.version = 1;
    request.guideID = guideID!;
    request.rating = isHelpful!;

    Uint8List body = request.writeToBuffer();


    try {
      await client_.post(
        Uri.parse('https://static.goyerv.com/v1/support/guides_search'),
        headers: {'content-type': 'application/x-protobuf'},
        body: body,
      );

      return GuidesModel.fromJson({});
        
      

    } finally {
      client_.close();

    }

  }




}