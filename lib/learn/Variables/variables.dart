
var name = "John Doe"; // Biến tự suy luận kiểu dữ liệu

String? age; // Cho phép được null

final UserId = "124"; // Biến hằng, không thể thay đổi giá trị sau khi gán

const pi = 3.14; // Biến hằng, không thể thay đổi giá trị sau khi gán, và phải được khởi tạo ngay lập tức

late String address; // Dùng khi chắc chắn sẽ gán giá trị sau khi khai báo

void main() {
  address  = "Quảng Nam"; //Nếu  không gán giá trị lại cho biến khi sài late thì sẽ bị lỗi này
                          // LateInitializationError: Field 'address' has not been initialized.
  print(address);


  // _ là biến không liên kết (non binding variable)
  // Giá trị này vẫn được thực thi nhưng không thể truy cập
  // Sử dụng khi không quan tâm đến biến đó

  var list = [1, 2, 3, 4, 5];
  var _ = 1;

  for(int _ in list) {
    print(_);
  }

  const bar =[];
  // bar.add(1); -> Lỗi: Unsupported operation: Cannot add to an unmodifiable list
  print(bar);

  var foo = const [1, 2, 3];
  // foo.add(4);
  // -> Lỗi: Unsupported operation: Cannot add to an unmodifiable list
  print(foo);

  const Object i = 3; //Object là kiểu cha của mọi kiểu dữ liệu trong Dar
  const listNew = [i as int]; //Tạo một danh sách hằng số list, chứa phần tử i được ép kiểu thành int.
  const map = {if( i is int) i: "int"}; //kiểm tra kiểu: nếu i là int, thì thêm cặp key-value vào map
  //map = {3: 'int'} vì i = 3 và 3 là int.



}