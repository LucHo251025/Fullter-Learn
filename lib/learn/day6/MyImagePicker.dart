// import 'dart:io';
//
// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
// import 'package:image_picker/image_picker.dart';
//
// class MyImagePicker extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() => _MyImagePickerState();
// }
//
// class _MyImagePickerState extends State<MyImagePicker> {
//   final _dateController = TextEditingController();
//   final ImagePicker _picker = ImagePicker();
//   File? _profileImage;
//   DateTime? _dateofBirth;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("My Date Picker"),
//       ),
//       body:
//       // FormField<File>(validator: (value) {
//       //   if (value == null) {
//       //     return "Vui long chon anh dai dien";
//       //   }
//       // }, builder: (FormFieldState<File> state) {
//       //   return Column(
//       //       crossAxisAlignment: CrossAxisAlignment.start,
//       //       children: [
//       //       GestureDetector(
//       //       onTap: ()
//       //   async{
//       //     final XFile? image = await showDialog(
//       //         context: context,
//       //         builder: (context) =>
//       //             AlertDialog(
//       //               title: Text("Chon nguon"),
//       //               content: Column(
//       //                 mainAxisSize: MainAxisSize.min,
//       //                 children: [
//       //                   ListTile(
//       //                     leading: Icon(Icons.photo_library),
//       //                     title: Text("Thu vien anh"),
//       //                     onTap: () async {
//       //                       Navigator.pop(
//       //                           context,
//       //                           await _picker.pickImage(
//       //                               source: ImageSource.gallery
//       //                           )
//       //                       );
//       //                     },
//       //                   ),
//       //                   ListTile(
//       //                     leading: Icon(Icons.camera_alt),
//       //                     title: Text("Thu vien anh"),
//       //                     onTap: () async {
//       //                       Navigator.pop(
//       //                           context,
//       //                           await _picker.pickImage(
//       //                               source: ImageSource.camera
//       //                           )
//       //                       );
//       //                     },
//       //                   )
//       //                 ],
//       //               ),
//       //             )
//       //     );
//       //     if (image != null) {
//       //       setState(() {
//       //         _profileImage = File(image.path);
//       //         state.didChange(_profileImage);
//       //       });
//       //     }
//       //   }
//       //   )
//       // }),
//     // );
//   }
// }