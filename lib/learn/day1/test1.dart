

void main() {
  String name;
  int age;
  bool isDart;
  double average;

  List<double> dsDiem = [9.0, 7.5, 6.0, 4.5, 8.2];

  dsDiem.forEach((diem) => print(diem.toString()+" : " + phanLoaiHocLuc(diem)));

  dsDiem.forEach((diem) => print("Điểm thưởng: " + tinhDiemThuong(diem, chamChi: true, gioiTinh: true).toString()));

}
double tinhDiemThuong(double diem,{bool chamChi = false,bool gioiTinh = false}) => diem + (chamChi ? 0.5 : 0) + (gioiTinh ? 0.2 : 0);

String phanLoaiHocLuc(double diem) =>
    diem >= 8 ? "Giỏi" :
    diem >= 6.5 ? "Khá" :
    diem >= 5 ? "Trung bình" :
    diem >= 3 ? "Yếu" : "Kém";