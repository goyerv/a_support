//
//  Generated code. Do not modify.
//  source: response.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use guideSearchResponseMessageDescriptor instead')
const GuideSearchResponseMessage$json = {
  '1': 'GuideSearchResponseMessage',
  '2': [
    {'1': 'guides', '3': 1, '4': 3, '5': 11, '6': '.guide_search.GuideSearchResponseMessage.Discussion', '10': 'guides'},
    {'1': 'recentDiscussionsReference', '3': 2, '4': 1, '5': 11, '6': '.guide_search.GuideSearchResponseMessage.Discussion', '10': 'recentDiscussionsReference'},
  ],
  '3': [GuideSearchResponseMessage_Discussion$json],
};

@$core.Deprecated('Use guideSearchResponseMessageDescriptor instead')
const GuideSearchResponseMessage_Discussion$json = {
  '1': 'Discussion',
  '2': [
    {'1': 'discussionID', '3': 1, '4': 1, '5': 9, '10': 'discussionID'},
    {'1': 'discussHeadline', '3': 2, '4': 1, '5': 9, '10': 'discussHeadline'},
    {'1': 'discussBody', '3': 3, '4': 1, '5': 9, '10': 'discussBody'},
    {'1': 'discussLink', '3': 4, '4': 1, '5': 9, '10': 'discussLink'},
    {'1': 'dateTime', '3': 5, '4': 1, '5': 9, '10': 'dateTime'},
  ],
};

/// Descriptor for `GuideSearchResponseMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List guideSearchResponseMessageDescriptor = $convert.base64Decode(
    'ChpHdWlkZVNlYXJjaFJlc3BvbnNlTWVzc2FnZRJLCgZndWlkZXMYASADKAsyMy5ndWlkZV9zZW'
    'FyY2guR3VpZGVTZWFyY2hSZXNwb25zZU1lc3NhZ2UuRGlzY3Vzc2lvblIGZ3VpZGVzEnMKGnJl'
    'Y2VudERpc2N1c3Npb25zUmVmZXJlbmNlGAIgASgLMjMuZ3VpZGVfc2VhcmNoLkd1aWRlU2Vhcm'
    'NoUmVzcG9uc2VNZXNzYWdlLkRpc2N1c3Npb25SGnJlY2VudERpc2N1c3Npb25zUmVmZXJlbmNl'
    'GroBCgpEaXNjdXNzaW9uEiIKDGRpc2N1c3Npb25JRBgBIAEoCVIMZGlzY3Vzc2lvbklEEigKD2'
    'Rpc2N1c3NIZWFkbGluZRgCIAEoCVIPZGlzY3Vzc0hlYWRsaW5lEiAKC2Rpc2N1c3NCb2R5GAMg'
    'ASgJUgtkaXNjdXNzQm9keRIgCgtkaXNjdXNzTGluaxgEIAEoCVILZGlzY3Vzc0xpbmsSGgoIZG'
    'F0ZVRpbWUYBSABKAlSCGRhdGVUaW1l');

