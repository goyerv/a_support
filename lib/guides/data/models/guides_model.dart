// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







import '../../domain/entity/guides_entity.dart';

class GuidesModel extends GuidesEntity {
  
  const GuidesModel({ List<Map<String, dynamic>>? guides, List<String>? searchSuggestions}) : super(guides: guides, searchSuggestions: searchSuggestions);

  factory GuidesModel.fromJson(Map<String, dynamic> json) {
    return GuidesModel(guides: json['guides'], searchSuggestions: json['searchSuggestions']);
  }

}