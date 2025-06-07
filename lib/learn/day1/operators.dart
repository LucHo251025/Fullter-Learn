void main() {

  assert(5 / 2 == 2.5); // chia ra kết quả double
  assert(5 ~/ 2 == 2); // chia lấy phần nguyên
  assert(5 % 2 == 1); // chia lấy phần dư

  var a = 3;      // 0b0011
  a <<= 2;        // a = a << 2 => 0b1100 (12)
  print(a); // Output: 12

  var b = 16;     // 0b10000
  b >>= 2;        // a = a >> 2 => 0b0100 (4)
  print(b); // Output: 4
}