import 'dart:io';
import 'package:advisor_user_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_picker/image_picker.dart';

class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  /// Variables
  File? _image;

  /// Widget
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image "),
      ),
      body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 12.w,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _image != null
                  ? Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          width: 80.w,
                          height: 50.w,
                          // padding: EdgeInsets.only(
                          //     left: 4.w, right: 5.w, top: 5.h, bottom: 6.h),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.r),
                            image: DecorationImage(
                              image: FileImage(
                                _image!,
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                          right: -5.w,
                          top: -5.h,
                          child: Container(
                            decoration: BoxDecoration(
                              color: lightBluishColor,
                              shape: BoxShape.circle,
                            ),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _image = null;
                                });
                              },
                              child: Icon(
                                Icons.close,
                                color: whiteColor,
                                size: 20,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  : _addImgBtn(context),
              // Spacer(),
              SizedBox(
                width: 20.w,
              ),
              //  _receiverTextField(),
              // Text(
              //   "RECEIVER NAME",
              //   style: GoogleFonts.inter(
              //       color: widget.giftCard.color,
              //       fontSize: 15.sp,
              //       fontWeight: FontWeight.w700),
              // )
            ],
          )),
    );
  }

  //btn
  Widget _addImgBtn(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
      padding: EdgeInsets.only(
        left: 4.w,
        right: 5.w,
      ),
      child: Column(
        children: [
          ElevatedButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      side: BorderSide(color: lightBluishColor))),
              backgroundColor: MaterialStateProperty.all(
                _image == null ? lightBluishColor : greyColor,
              ),
            ),
            onPressed: () {
              if (_image == null) {
                _showImagePickerSheet(context);
              } else {
                setState(() {
                  _image = null;
                });
              }
            },
            child: Column(
              children: [
                SizedBox(
                  height: 5.h,
                ),
                Icon(
                  Icons.add,
                  color: lightBluishColor,
                  size: 24.0,
                ),
                Text(
                  "add_img",
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w400,
                      fontSize: 11.sp,
                      color: _image != null ? whiteColor : lightBluishColor),
                ),

                SizedBox(
                  height: 5.h,
                )
                // const FittedBox(
                //     fit: BoxFit.contain, child: Text("(Optional)"))
              ],
            ),
          ),
          SizedBox(
            height: 3.h,
          ),
          Text(
            "optional",
            style: GoogleFonts.inter(
              color: lightBluishColor,
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,

              //color: text
            ),
          )
        ],
      ),
    );
  }

//image sheet

  void _showImagePickerSheet(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext buildContext) {
          return Container(
            // decoration: const BoxDecoration(
            //   color: Colors.white,
            // ),
            height: 125.h,
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Add Photo',
                  style: TextStyle(
                      color: lightBluishColor,
                      fontSize: 22.sp,
                      fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    _galleryBtn(context),
                    SizedBox(
                      width: 20.h,
                    ),
                    _cameraPickerBtn(context),
                  ],
                )
              ],
            ),
          );
        });
  }

//galary camra camra piker
  GestureDetector _galleryBtn(context) {
    return GestureDetector(
      onTap: () {
        _imgFromGallery();
        //_uploadFile();
        Navigator.pop(context);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.photo,
            size: 30.sp,
            color: lightBluishColor,
          ),
          Text(
            'Gallery',
            style: TextStyle(
              color: lightBluishColor,
              fontSize: 18.sp,
            ),
          )
        ],
      ),
    );
  }

  //--------------------------------------------------------------
  GestureDetector _cameraPickerBtn(context) {
    return GestureDetector(
      onTap: () {
        _imgFromCamera();

        Navigator.pop(context);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.camera_alt,
            size: 30.sp,
            color: lightBluishColor,
          ),
          Text(
            'Camera',
            style: TextStyle(
              color: lightBluishColor,
              fontSize: 18.sp,
            ),
          )
        ],
      ),
    );
  }

  //--------------------------------------------------------------
  void _imgFromCamera() async {
    final picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.camera);

    setState(() {
      _image = File(image!.path);
    });
  }

  //--------------------------------------------------------------
  void _imgFromGallery() async {
    final picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    if (image == null) {
      return;
    }
    setState(() {
      _image = File(image.path);
    });
  }

  /// Get from gallery
  // _getFromGallery() async {
  //   PickedFile? pickedFile = await ImagePicker().getImage(
  //     source: ImageSource.gallery,
  //     maxWidth: 1800,
  //     maxHeight: 1800,
  //   );
  //   if (pickedFile != null) {
  //     setState(() {
  //       imageFile = File(pickedFile.path);
  //     });
  //   }
  // }

  /// Get from Camera
//   _getFromCamera() async {
//     PickedFile? pickedFile = await ImagePicker().getImage(
//       source: ImageSource.camera,
//       maxWidth: 1800,
//       maxHeight: 1800,
//     );
//     if (pickedFile != null) {
//       setState(() {
//         imageFile = File(pickedFile.path);
//       });
//     }
//   }
// }

  // RaisedButton is deprecated and should not be used
  // Use ElevatedButton instead.

  // child: RaisedButton(
  //     child: const Text('showModalBottomSheet'),
  //     onPressed: () {

  //     // when raised button is pressed
  //     // we display showModalBottomSheet
  //     showModalBottomSheet<void>(

  //         // context and builder are
  //         // required properties in this widget
  //         context: context,
  //         builder: (BuildContext context) {

  //         // we set up a container inside which
  //         // we create center column and display text
  //         return Container(
  //             height: 200,
  //             child: Center(
  //             child: Column(
  //                 mainAxisAlignment: MainAxisAlignment.center,
  //                 children: <Widget>[
  //                 const Text('GeeksforGeeks'),
  //                 ],
  //             ),
  //             ),
  //         );
  //         },
  //     );
  //     },
  // ),
//     );
//   }
// }

// import 'dart:io';
// import 'dart:math';

// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:image_picker/image_picker.dart';

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({
//     Key? key,
//   }) : super(key: key);

//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.

//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   final ImagePicker imagePicker = ImagePicker();

//   List<XFile>? imageFileList = [];

//   void selectImages() async {
//     final List<XFile> selectedImages = await imagePicker.pickMultiImage();
//     if (selectedImages.isNotEmpty) {
//       imageFileList!.addAll(selectedImages);
//     }
//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text("Image Picker Example"),
//         ),
//         body: Center(
//           child: Column(
//             children: [
//               MaterialButton(
//                   color: Colors.blue,
//                   child: const Text("Pick Images from Gallery",
//                       style: TextStyle(
//                           color: Colors.white70, fontWeight: FontWeight.bold)),
//                   onPressed: () {
//                     selectImages();
//                   }),
//               SizedBox(
//                 height: 20,
//               ),
//               Expanded(
//                   child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: GridView.builder(
//                     itemCount: imageFileList!.length,
//                     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                         crossAxisCount: 3),
//                     itemBuilder: (BuildContext context, int index) {
//                       return Image.file(File(imageFileList![index].path),
//                           fit: BoxFit.cover);
//                     }),
//               ))
//             ],
//           ),
//         ));
//   }
// }

}
