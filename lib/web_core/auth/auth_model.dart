// Copyright (c) 2022 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







 class AuthModel {
  
  final String? accessToken;
  final String? refreshToken;
  final String? userID;
  final String? platformProperties;
  final String? webApiKey;
  final String? platformLocaleKey;

  const AuthModel({this.accessToken, this.refreshToken, this.userID, this.platformProperties,this.webApiKey, this.platformLocaleKey});

  factory AuthModel.fromJson(Map<String, dynamic> json) {
    return AuthModel(
      accessToken: json['accessToken'],
      refreshToken: json['refreshToken'],
      userID: json['userID'],
      platformProperties: json['platformProperties'],
      webApiKey: json['webApiKey'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'accessToken': accessToken,
      'refreshToken': refreshToken,
      'userID': userID,
    };
  }
}