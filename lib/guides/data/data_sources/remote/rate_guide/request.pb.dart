// This is a generated file - do not edit.
//
// Generated from request.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class RateGuideRequestMessage extends $pb.GeneratedMessage {
  factory RateGuideRequestMessage({
    $core.int? version,
    $core.String? guideID,
    $core.bool? rating,
  }) {
    final result = create();
    if (version != null) result.version = version;
    if (guideID != null) result.guideID = guideID;
    if (rating != null) result.rating = rating;
    return result;
  }

  RateGuideRequestMessage._();

  factory RateGuideRequestMessage.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RateGuideRequestMessage.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RateGuideRequestMessage',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'rate_guide'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'version')
    ..aOS(2, _omitFieldNames ? '' : 'guideID', protoName: 'guideID')
    ..aOB(3, _omitFieldNames ? '' : 'rating')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RateGuideRequestMessage clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RateGuideRequestMessage copyWith(
          void Function(RateGuideRequestMessage) updates) =>
      super.copyWith((message) => updates(message as RateGuideRequestMessage))
          as RateGuideRequestMessage;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RateGuideRequestMessage create() => RateGuideRequestMessage._();
  @$core.override
  RateGuideRequestMessage createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RateGuideRequestMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RateGuideRequestMessage>(create);
  static RateGuideRequestMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get version => $_getIZ(0);
  @$pb.TagNumber(1)
  set version($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearVersion() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get guideID => $_getSZ(1);
  @$pb.TagNumber(2)
  set guideID($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasGuideID() => $_has(1);
  @$pb.TagNumber(2)
  void clearGuideID() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.bool get rating => $_getBF(2);
  @$pb.TagNumber(3)
  set rating($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasRating() => $_has(2);
  @$pb.TagNumber(3)
  void clearRating() => $_clearField(3);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
