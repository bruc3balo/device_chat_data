import 'dart:io';
import 'dart:typed_data';
import 'package:crypto/crypto.dart';

import 'package:device_chat_data/src/models/data_models.dart';

abstract class LocalFileService {

  Future<Result<Sha1>> saveLocalFile(File data);

  Future<Result<Uint8List>> getLocalFile(String sha1);

  String get _fileDirectory;

}

