//
//  Generated code. Do not modify.
//  source: request.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class RateGuideRequestMessage extends $pb.GeneratedMessage {
  factory RateGuideRequestMessage({
    $core.int? version,
    $core.String? guideID,
    $core.bool? rating,
  }) {
    final $result = create();
    if (version != null) {
      $result.version = version;
    }
    if (guideID != null) {
      $result.guideID = guideID;
    }
    if (rating != null) {
      $result.rating = rating;
    }
    return $result;
  }
  RateGuideRequestMessage._() : super();
  factory RateGuideRequestMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RateGuideRequestMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RateGuideRequestMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'rate_guide'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'version', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'guideID', protoName: 'guideID')
    ..aOB(3, _omitFieldNames ? '' : 'rating')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RateGuideRequestMessage clone() => RateGuideRequestMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RateGuideRequestMessage copyWith(void Function(RateGuideRequestMessage) updates) => super.copyWith((message) => updates(message as RateGuideRequestMessage)) as RateGuideRequestMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RateGuideRequestMessage create() => RateGuideRequestMessage._();
  RateGuideRequestMessage createEmptyInstance() => create();
  static $pb.PbList<RateGuideRequestMessage> createRepeated() => $pb.PbList<RateGuideRequestMessage>();
  @$core.pragma('dart2js:noInline')
  static RateGuideRequestMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RateGuideRequestMessage>(create);
  static RateGuideRequestMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get version => $_getIZ(0);
  @$pb.TagNumber(1)
  set version($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearVersion() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get guideID => $_getSZ(1);
  @$pb.TagNumber(2)
  set guideID($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasGuideID() => $_has(1);
  @$pb.TagNumber(2)
  void clearGuideID() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get rating => $_getBF(2);
  @$pb.TagNumber(3)
  set rating($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRating() => $_has(2);
  @$pb.TagNumber(3)
  void clearRating() => clearField(3);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
