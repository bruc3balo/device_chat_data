import 'dart:io';
import 'dart:typed_data';
import 'package:crypto/crypto.dart';
import 'package:path/path.dart' as path;

import 'package:device_chat_data/src/models/data_models.dart';

abstract class LocalFileService {

  Future<Result<Sha1>> saveLocalFile(File data);

  Future<Result<Uint8List>> getLocalFile(String sha1);

  String get _fileDirectory;

  Sha1 _computeSha1Hash(Uint8List bytes) => Sha1(
        sha1.convert(bytes).toString(),
      );
}

class LocalFileServiceImpl extends LocalFileService {

  @override
  final String _fileDirectory;

  LocalFileServiceImpl({
    required String filePath,
  }) : _fileDirectory = filePath;

  @override
  Future<Result<Uint8List>> getLocalFile(String sha1) async {
    try {
      Sha1 sh = Sha1(sha1);

      String filePath = path.join(_fileDirectory, sh.short, sh.hash);
      File file = File(filePath);
      if (await file.exists()) {
        return Result.error(errorMessage: "File not found");
      }

      //to avoid blocking the event loop use async
      Uint8List bytes = await file.readAsBytes();
      return Result.success(data: bytes);
    } catch (e, trace) {
      return Result.error(
        errorMessage: e.toString(),
        stackTrace: trace,
      );
    }
  }

  @override
  Future<Result<Sha1>> saveLocalFile(File data) async {
    Uint8List bytes = await data.readAsBytes();
    Sha1 sha1 = _computeSha1Hash(bytes);
    String filePath = path.join(_fileDirectory, sha1.short, sha1.hash);
    await File(filePath).writeAsBytes(bytes);
    return Result.success(data: sha1);
  }

}