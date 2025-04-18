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

class SupportSearchRequestMessage extends $pb.GeneratedMessage {
  factory SupportSearchRequestMessage({
    $core.int? version,
    $core.String? query,
  }) {
    final $result = create();
    if (version != null) {
      $result.version = version;
    }
    if (query != null) {
      $result.query = query;
    }
    return $result;
  }
  SupportSearchRequestMessage._() : super();
  factory SupportSearchRequestMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SupportSearchRequestMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SupportSearchRequestMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'search_support'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'version', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'query')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SupportSearchRequestMessage clone() => SupportSearchRequestMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SupportSearchRequestMessage copyWith(void Function(SupportSearchRequestMessage) updates) => super.copyWith((message) => updates(message as SupportSearchRequestMessage)) as SupportSearchRequestMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SupportSearchRequestMessage create() => SupportSearchRequestMessage._();
  SupportSearchRequestMessage createEmptyInstance() => create();
  static $pb.PbList<SupportSearchRequestMessage> createRepeated() => $pb.PbList<SupportSearchRequestMessage>();
  @$core.pragma('dart2js:noInline')
  static SupportSearchRequestMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SupportSearchRequestMessage>(create);
  static SupportSearchRequestMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get version => $_getIZ(0);
  @$pb.TagNumber(1)
  set version($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearVersion() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get query => $_getSZ(1);
  @$pb.TagNumber(2)
  set query($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasQuery() => $_has(1);
  @$pb.TagNumber(2)
  void clearQuery() => clearField(2);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
