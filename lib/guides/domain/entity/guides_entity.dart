// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







import 'package:equatable/equatable.dart';

class GuidesEntity extends Equatable {

  final List<Map<String, dynamic>>? guides; 
  final List<String>? searchSuggestions;

  const GuidesEntity({this.guides, this.searchSuggestions});

  @override 
  List<Object?> get props => [guides, searchSuggestions];
  
}