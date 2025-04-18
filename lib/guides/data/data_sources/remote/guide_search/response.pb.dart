//
//  Generated code. Do not modify.
//  source: response.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class GuideSearchResponseMessage_Discussion extends $pb.GeneratedMessage {
  factory GuideSearchResponseMessage_Discussion({
    $core.String? discussionID,
    $core.String? discussHeadline,
    $core.String? discussBody,
    $core.String? discussLink,
    $core.String? dateTime,
  }) {
    final $result = create();
    if (discussionID != null) {
      $result.discussionID = discussionID;
    }
    if (discussHeadline != null) {
      $result.discussHeadline = discussHeadline;
    }
    if (discussBody != null) {
      $result.discussBody = discussBody;
    }
    if (discussLink != null) {
      $result.discussLink = discussLink;
    }
    if (dateTime != null) {
      $result.dateTime = dateTime;
    }
    return $result;
  }
  GuideSearchResponseMessage_Discussion._() : super();
  factory GuideSearchResponseMessage_Discussion.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GuideSearchResponseMessage_Discussion.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GuideSearchResponseMessage.Discussion', package: const $pb.PackageName(_omitMessageNames ? '' : 'guide_search'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'discussionID', protoName: 'discussionID')
    ..aOS(2, _omitFieldNames ? '' : 'discussHeadline', protoName: 'discussHeadline')
    ..aOS(3, _omitFieldNames ? '' : 'discussBody', protoName: 'discussBody')
    ..aOS(4, _omitFieldNames ? '' : 'discussLink', protoName: 'discussLink')
    ..aOS(5, _omitFieldNames ? '' : 'dateTime', protoName: 'dateTime')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GuideSearchResponseMessage_Discussion clone() => GuideSearchResponseMessage_Discussion()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GuideSearchResponseMessage_Discussion copyWith(void Function(GuideSearchResponseMessage_Discussion) updates) => super.copyWith((message) => updates(message as GuideSearchResponseMessage_Discussion)) as GuideSearchResponseMessage_Discussion;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GuideSearchResponseMessage_Discussion create() => GuideSearchResponseMessage_Discussion._();
  GuideSearchResponseMessage_Discussion createEmptyInstance() => create();
  static $pb.PbList<GuideSearchResponseMessage_Discussion> createRepeated() => $pb.PbList<GuideSearchResponseMessage_Discussion>();
  @$core.pragma('dart2js:noInline')
  static GuideSearchResponseMessage_Discussion getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GuideSearchResponseMessage_Discussion>(create);
  static GuideSearchResponseMessage_Discussion? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get discussionID => $_getSZ(0);
  @$pb.TagNumber(1)
  set discussionID($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDiscussionID() => $_has(0);
  @$pb.TagNumber(1)
  void clearDiscussionID() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get discussHeadline => $_getSZ(1);
  @$pb.TagNumber(2)
  set discussHeadline($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDiscussHeadline() => $_has(1);
  @$pb.TagNumber(2)
  void clearDiscussHeadline() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get discussBody => $_getSZ(2);
  @$pb.TagNumber(3)
  set discussBody($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDiscussBody() => $_has(2);
  @$pb.TagNumber(3)
  void clearDiscussBody() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get discussLink => $_getSZ(3);
  @$pb.TagNumber(4)
  set discussLink($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDiscussLink() => $_has(3);
  @$pb.TagNumber(4)
  void clearDiscussLink() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get dateTime => $_getSZ(4);
  @$pb.TagNumber(5)
  set dateTime($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDateTime() => $_has(4);
  @$pb.TagNumber(5)
  void clearDateTime() => clearField(5);
}

class GuideSearchResponseMessage extends $pb.GeneratedMessage {
  factory GuideSearchResponseMessage({
    $core.Iterable<GuideSearchResponseMessage_Discussion>? guides,
    GuideSearchResponseMessage_Discussion? recentDiscussionsReference,
  }) {
    final $result = create();
    if (guides != null) {
      $result.guides.addAll(guides);
    }
    if (recentDiscussionsReference != null) {
      $result.recentDiscussionsReference = recentDiscussionsReference;
    }
    return $result;
  }
  GuideSearchResponseMessage._() : super();
  factory GuideSearchResponseMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GuideSearchResponseMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GuideSearchResponseMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'guide_search'), createEmptyInstance: create)
    ..pc<GuideSearchResponseMessage_Discussion>(1, _omitFieldNames ? '' : 'guides', $pb.PbFieldType.PM, subBuilder: GuideSearchResponseMessage_Discussion.create)
    ..aOM<GuideSearchResponseMessage_Discussion>(2, _omitFieldNames ? '' : 'recentDiscussionsReference', protoName: 'recentDiscussionsReference', subBuilder: GuideSearchResponseMessage_Discussion.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GuideSearchResponseMessage clone() => GuideSearchResponseMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GuideSearchResponseMessage copyWith(void Function(GuideSearchResponseMessage) updates) => super.copyWith((message) => updates(message as GuideSearchResponseMessage)) as GuideSearchResponseMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GuideSearchResponseMessage create() => GuideSearchResponseMessage._();
  GuideSearchResponseMessage createEmptyInstance() => create();
  static $pb.PbList<GuideSearchResponseMessage> createRepeated() => $pb.PbList<GuideSearchResponseMessage>();
  @$core.pragma('dart2js:noInline')
  static GuideSearchResponseMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GuideSearchResponseMessage>(create);
  static GuideSearchResponseMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GuideSearchResponseMessage_Discussion> get guides => $_getList(0);

  @$pb.TagNumber(2)
  GuideSearchResponseMessage_Discussion get recentDiscussionsReference => $_getN(1);
  @$pb.TagNumber(2)
  set recentDiscussionsReference(GuideSearchResponseMessage_Discussion v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasRecentDiscussionsReference() => $_has(1);
  @$pb.TagNumber(2)
  void clearRecentDiscussionsReference() => clearField(2);
  @$pb.TagNumber(2)
  GuideSearchResponseMessage_Discussion ensureRecentDiscussionsReference() => $_ensure(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
