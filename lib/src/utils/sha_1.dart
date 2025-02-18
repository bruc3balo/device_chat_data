import 'dart:typed_data';

import 'package:crypto/crypto.dart';

import 'package:device_chat_data/src/models/data_models.dart';

Sha1 computeSha1Hash(Uint8List bytes) => Sha1(sha1.convert(bytes).toString());
