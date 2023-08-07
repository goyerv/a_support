// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







import 'package:equatable/equatable.dart';

class HomepageEntity extends Equatable {

  final List<Map<String, dynamic>>? searchSuggestions;


  const HomepageEntity({this.searchSuggestions});

  @override
  List<Object?> get props => [searchSuggestions];
  
}