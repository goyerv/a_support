// Copyright (c) 2022 Goyerv Ltd. All rights reserved.
// Author: Emmanuel Okorafor







import 'package:encrypt/encrypt.dart';

final gKey = Key.fromUtf8('This key has to be 32 in length...look for a goo one later');

final Encrypter encrypter = Encrypter(AES(gKey));
final iv = IV.fromLength(16);

String encrypt(String string) {
  return encrypter.encrypt(string, iv: iv).base64;
}

String decrypt(String encryption) {
  return encrypter.decrypt64(encryption, iv: iv);
}
