import 'dart:io';
import 'dart:convert';
void main() {
  print("Nhập họ tên: ");
  String? name = stdin.readLineSync(encoding: utf8);
  print("Xin chào: $name");
}