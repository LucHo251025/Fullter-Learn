void main(List<String> args) {

  print(args);
  //Tham số bắt buộc dạng vị trí
  int add(int a,int b) => a + b;

  print(add(2, 3));

  enableFlags();
  enableFlags(bold: true);

  say('Bob', 'Howdy'); // Không có device
  say('Bob', 'Howdy', 'smoke signal'); // Có device

  var list = [1,3,6,8,9];

  //Gán hàm vào biến
  list.forEach(printElement);
  var name = (userName) => print("?? ${userName.toUpperCase()}");
  name("Nguyen Van A");

  void greet(String name, {String greeting = 'Hello'}) =>
      print('$greeting $name!');

  // Gán hàm `greet` vào biến `g`
  void Function(String, {String greeting}) g = greet;
  g('Dash', greeting: 'Howdy');

  var listName = ['nguyen van A', 'Nguyen Van B', 'Nguyen Van C'];
  var uppercaseList = listName.map((item) => item.toUpperCase()).toList();
  uppercaseList.forEach((item) => print(item));
}




void printElement(int element) {
  print('Element: $element');
}

//Tham số có tên
void enableFlags({bool? bold, bool? hidden}) { // khai báo trong {} cho phép null và toán tử ?
  print('bold: $bold, hidden: $hidden');
}

//Tham số tùy chọn dạng vị trí
String say(String from, String msg, [String? device]) {
  var result = '$from says $msg';
  if (device != null) {
    result += ' with a $device';
  }
  return result;
}
