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

class RequestMessage extends $pb.GeneratedMessage {
  factory RequestMessage({
    $core.int? version,
    $core.String? emailAddress,
    $core.String? issue,
    $core.Iterable<$core.String>? images,
  }) {
    final $result = create();
    if (version != null) {
      $result.version = version;
    }
    if (emailAddress != null) {
      $result.emailAddress = emailAddress;
    }
    if (issue != null) {
      $result.issue = issue;
    }
    if (images != null) {
      $result.images.addAll(images);
    }
    return $result;
  }
  RequestMessage._() : super();
  factory RequestMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RequestMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RequestMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'email_support'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'version', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'emailAddress', protoName: 'emailAddress')
    ..aOS(3, _omitFieldNames ? '' : 'issue')
    ..pPS(4, _omitFieldNames ? '' : 'images')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RequestMessage clone() => RequestMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RequestMessage copyWith(void Function(RequestMessage) updates) => super.copyWith((message) => updates(message as RequestMessage)) as RequestMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RequestMessage create() => RequestMessage._();
  RequestMessage createEmptyInstance() => create();
  static $pb.PbList<RequestMessage> createRepeated() => $pb.PbList<RequestMessage>();
  @$core.pragma('dart2js:noInline')
  static RequestMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RequestMessage>(create);
  static RequestMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get version => $_getIZ(0);
  @$pb.TagNumber(1)
  set version($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearVersion() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get emailAddress => $_getSZ(1);
  @$pb.TagNumber(2)
  set emailAddress($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEmailAddress() => $_has(1);
  @$pb.TagNumber(2)
  void clearEmailAddress() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get issue => $_getSZ(2);
  @$pb.TagNumber(3)
  set issue($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIssue() => $_has(2);
  @$pb.TagNumber(3)
  void clearIssue() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.String> get images => $_getList(3);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
