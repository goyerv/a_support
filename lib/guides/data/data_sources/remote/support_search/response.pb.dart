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

class SupportSearchResponseMessage extends $pb.GeneratedMessage {
  factory SupportSearchResponseMessage({
    $core.Iterable<$core.String>? searchSuggestions,
  }) {
    final $result = create();
    if (searchSuggestions != null) {
      $result.searchSuggestions.addAll(searchSuggestions);
    }
    return $result;
  }
  SupportSearchResponseMessage._() : super();
  factory SupportSearchResponseMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SupportSearchResponseMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SupportSearchResponseMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'search_support'), createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'searchSuggestions', protoName: 'searchSuggestions')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SupportSearchResponseMessage clone() => SupportSearchResponseMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SupportSearchResponseMessage copyWith(void Function(SupportSearchResponseMessage) updates) => super.copyWith((message) => updates(message as SupportSearchResponseMessage)) as SupportSearchResponseMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SupportSearchResponseMessage create() => SupportSearchResponseMessage._();
  SupportSearchResponseMessage createEmptyInstance() => create();
  static $pb.PbList<SupportSearchResponseMessage> createRepeated() => $pb.PbList<SupportSearchResponseMessage>();
  @$core.pragma('dart2js:noInline')
  static SupportSearchResponseMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SupportSearchResponseMessage>(create);
  static SupportSearchResponseMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get searchSuggestions => $_getList(0);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
