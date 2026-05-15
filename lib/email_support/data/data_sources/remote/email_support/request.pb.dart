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

class RequestMessage extends $pb.GeneratedMessage {
  factory RequestMessage({
    $core.int? version,
    $core.String? emailAddress,
    $core.String? issue,
    $core.Iterable<$core.String>? images,
  }) {
    final result = create();
    if (version != null) result.version = version;
    if (emailAddress != null) result.emailAddress = emailAddress;
    if (issue != null) result.issue = issue;
    if (images != null) result.images.addAll(images);
    return result;
  }

  RequestMessage._();

  factory RequestMessage.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RequestMessage.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RequestMessage',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'email_support'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'version')
    ..aOS(2, _omitFieldNames ? '' : 'emailAddress', protoName: 'emailAddress')
    ..aOS(3, _omitFieldNames ? '' : 'issue')
    ..pPS(4, _omitFieldNames ? '' : 'images')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RequestMessage clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RequestMessage copyWith(void Function(RequestMessage) updates) =>
      super.copyWith((message) => updates(message as RequestMessage))
          as RequestMessage;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RequestMessage create() => RequestMessage._();
  @$core.override
  RequestMessage createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RequestMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RequestMessage>(create);
  static RequestMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get version => $_getIZ(0);
  @$pb.TagNumber(1)
  set version($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearVersion() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get emailAddress => $_getSZ(1);
  @$pb.TagNumber(2)
  set emailAddress($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasEmailAddress() => $_has(1);
  @$pb.TagNumber(2)
  void clearEmailAddress() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get issue => $_getSZ(2);
  @$pb.TagNumber(3)
  set issue($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasIssue() => $_has(2);
  @$pb.TagNumber(3)
  void clearIssue() => $_clearField(3);

  @$pb.TagNumber(4)
  $pb.PbList<$core.String> get images => $_getList(3);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
