void main() {

  var list = [1, 2, 3, 4, 5];
  showElement(list); // Output: [1, 2, 3, 4, 5]

  var reversedList = -list;
  showElement(reversedList); // Output: [5, 4, 3, 2, 1]

}

void showElement<T>(List<T> list) {
  for (var element in list) {
    print(element);
  }
}

extension MyList<T> on List<T>{
  List<T> operator -() => reversed.toList();
}