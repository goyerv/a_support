// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







import '../../domain/entity/homepage_entity.dart';

class HomepageModel extends HomepageEntity {
  
  const HomepageModel({ List<Map<String, dynamic>>? searchSuggestions}) : super(searchSuggestions: searchSuggestions);

  factory HomepageModel.fromJson(Map<String, dynamic> json) {
    return HomepageModel(searchSuggestions: json['searchSuggestions']);
  }

}