// Copyright (c) 2022 Goyerv Ltd. All rights reserved.
// Adapted from Stack Overflow, Authored by Kamlesh







import 'dart:io';
import 'dart:math';

late int bytes;

class FileSize {

  String getFileSize(String filePath, int decimals)  {
    getFileBytes(filePath);
    Future.delayed(const Duration(microseconds: 2));

    if (bytes <= 0) return "0 B";
    const suffixes = ['B', 'KB', 'MB', 'GB', 'TB', 'PB', 'EB', 'ZB', 'YB'];
    var i = (log(bytes) / log(1024)).floor();
    return ((bytes / pow(1024, 1)).toStringAsFixed(decimals)) + suffixes[i];
  }
  

  String getFileSizeFromBytes (int bytes, int decimals) {
    if (bytes <= 0) return "0 B";
    const suffixes = ['B', 'KB', 'MB', 'GB', 'TB', 'PB', 'EB', 'ZB', 'YB'];
    var i = (log(bytes) / log(1024)).floor();
    return ((bytes / pow(1024, 1)).toStringAsFixed(decimals)) + suffixes[i];
  }

  Future<void> getFileBytes(String filePath) async {
    var file = File(filePath);
    bytes = await file.length();
  }

}