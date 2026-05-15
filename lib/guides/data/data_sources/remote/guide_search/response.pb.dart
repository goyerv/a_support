// This is a generated file - do not edit.
//
// Generated from response.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class GuideSearchResponseMessage_Discussion extends $pb.GeneratedMessage {
  factory GuideSearchResponseMessage_Discussion({
    $core.String? discussionID,
    $core.String? discussHeadline,
    $core.String? discussBody,
    $core.String? discussLink,
    $core.String? dateTime,
  }) {
    final result = create();
    if (discussionID != null) result.discussionID = discussionID;
    if (discussHeadline != null) result.discussHeadline = discussHeadline;
    if (discussBody != null) result.discussBody = discussBody;
    if (discussLink != null) result.discussLink = discussLink;
    if (dateTime != null) result.dateTime = dateTime;
    return result;
  }

  GuideSearchResponseMessage_Discussion._();

  factory GuideSearchResponseMessage_Discussion.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GuideSearchResponseMessage_Discussion.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GuideSearchResponseMessage.Discussion',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'guide_search'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'discussionID', protoName: 'discussionID')
    ..aOS(2, _omitFieldNames ? '' : 'discussHeadline',
        protoName: 'discussHeadline')
    ..aOS(3, _omitFieldNames ? '' : 'discussBody', protoName: 'discussBody')
    ..aOS(4, _omitFieldNames ? '' : 'discussLink', protoName: 'discussLink')
    ..aOS(5, _omitFieldNames ? '' : 'dateTime', protoName: 'dateTime')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GuideSearchResponseMessage_Discussion clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GuideSearchResponseMessage_Discussion copyWith(
          void Function(GuideSearchResponseMessage_Discussion) updates) =>
      super.copyWith((message) =>
              updates(message as GuideSearchResponseMessage_Discussion))
          as GuideSearchResponseMessage_Discussion;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GuideSearchResponseMessage_Discussion create() =>
      GuideSearchResponseMessage_Discussion._();
  @$core.override
  GuideSearchResponseMessage_Discussion createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GuideSearchResponseMessage_Discussion getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          GuideSearchResponseMessage_Discussion>(create);
  static GuideSearchResponseMessage_Discussion? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get discussionID => $_getSZ(0);
  @$pb.TagNumber(1)
  set discussionID($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDiscussionID() => $_has(0);
  @$pb.TagNumber(1)
  void clearDiscussionID() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get discussHeadline => $_getSZ(1);
  @$pb.TagNumber(2)
  set discussHeadline($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDiscussHeadline() => $_has(1);
  @$pb.TagNumber(2)
  void clearDiscussHeadline() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get discussBody => $_getSZ(2);
  @$pb.TagNumber(3)
  set discussBody($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasDiscussBody() => $_has(2);
  @$pb.TagNumber(3)
  void clearDiscussBody() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get discussLink => $_getSZ(3);
  @$pb.TagNumber(4)
  set discussLink($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasDiscussLink() => $_has(3);
  @$pb.TagNumber(4)
  void clearDiscussLink() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get dateTime => $_getSZ(4);
  @$pb.TagNumber(5)
  set dateTime($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasDateTime() => $_has(4);
  @$pb.TagNumber(5)
  void clearDateTime() => $_clearField(5);
}

class GuideSearchResponseMessage extends $pb.GeneratedMessage {
  factory GuideSearchResponseMessage({
    $core.Iterable<GuideSearchResponseMessage_Discussion>? guides,
    GuideSearchResponseMessage_Discussion? recentDiscussionsReference,
  }) {
    final result = create();
    if (guides != null) result.guides.addAll(guides);
    if (recentDiscussionsReference != null)
      result.recentDiscussionsReference = recentDiscussionsReference;
    return result;
  }

  GuideSearchResponseMessage._();

  factory GuideSearchResponseMessage.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GuideSearchResponseMessage.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GuideSearchResponseMessage',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'guide_search'),
      createEmptyInstance: create)
    ..pPM<GuideSearchResponseMessage_Discussion>(
        1, _omitFieldNames ? '' : 'guides',
        subBuilder: GuideSearchResponseMessage_Discussion.create)
    ..aOM<GuideSearchResponseMessage_Discussion>(
        2, _omitFieldNames ? '' : 'recentDiscussionsReference',
        protoName: 'recentDiscussionsReference',
        subBuilder: GuideSearchResponseMessage_Discussion.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GuideSearchResponseMessage clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GuideSearchResponseMessage copyWith(
          void Function(GuideSearchResponseMessage) updates) =>
      super.copyWith(
              (message) => updates(message as GuideSearchResponseMessage))
          as GuideSearchResponseMessage;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GuideSearchResponseMessage create() => GuideSearchResponseMessage._();
  @$core.override
  GuideSearchResponseMessage createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GuideSearchResponseMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GuideSearchResponseMessage>(create);
  static GuideSearchResponseMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<GuideSearchResponseMessage_Discussion> get guides => $_getList(0);

  @$pb.TagNumber(2)
  GuideSearchResponseMessage_Discussion get recentDiscussionsReference =>
      $_getN(1);
  @$pb.TagNumber(2)
  set recentDiscussionsReference(GuideSearchResponseMessage_Discussion value) =>
      $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasRecentDiscussionsReference() => $_has(1);
  @$pb.TagNumber(2)
  void clearRecentDiscussionsReference() => $_clearField(2);
  @$pb.TagNumber(2)
  GuideSearchResponseMessage_Discussion ensureRecentDiscussionsReference() =>
      $_ensure(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
