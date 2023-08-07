// Copyright (c) 2023 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







import 'package:equatable/equatable.dart';

class EmailSupportEntity extends Equatable {

  final bool? supportRequestSent;

  const EmailSupportEntity({this.supportRequestSent});

  @override 
  List<Object?> get props => [supportRequestSent];

}