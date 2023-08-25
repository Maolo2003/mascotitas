import 'dart:convert';

import 'package:crypto/crypto.dart';

String encript(String password) {
  var bytes = utf8.encode(password);
  var hmacSha512 = Hmac(sha512, bytes);
  var digest = hmacSha512.convert(utf8.encode(password));
  return digest.toString();
}