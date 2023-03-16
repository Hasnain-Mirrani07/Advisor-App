// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:advisor_user_app/ui/shared/widgets/blue_btn.dart';
import 'package:advisor_user_app/ui/shared/widgets/cstm_text_field.dart';
import 'package:advisor_user_app/ui/shared/widgets/img_container.dart';
import 'package:advisor_user_app/utils/assets.dart';

import 'package:advisor_user_app/utils/colors.dart';
import 'package:advisor_user_app/utils/constants.dart';
import 'package:advisor_user_app/utils/re_use.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

import 'manageAccount_widgets/number_field.dart';

class ManageAccountScreen extends StatefulWidget {
  static const id = '/ManageAccountScreen';
  const ManageAccountScreen({super.key});

  @override
  State<ManageAccountScreen> createState() => _ManageAccountScreenState();
}

class _ManageAccountScreenState extends State<ManageAccountScreen> {
  final TextEditingController controller = TextEditingController();
  String initialCountry = 'SA';
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final reUse = ReUse();
  PhoneNumber number = PhoneNumber(isoCode: 'SA');
  late bool langSelect = true;
  File? _image;
  @override
  Widget build(BuildContext context) {
    final requiredValidator =
        RequiredValidator(errorText: 'required_field'.tr());

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: true,
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 34.h,
                    ),
                    Row(children: [
                      const Icon(
                        Icons.arrow_back,
                        color: blackkColor,
                      ),
                      SizedBox(
                        width: 18.h,
                      ),
                      Text(
                        'manage_account'.tr(),
                        style: GoogleFonts.yantramanav(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500,
                          color: blackkColor,
                        ),
                      ),
                    ]),
                    SizedBox(
                      height: 37.h,
                    ),
                    // GestureDetector(
                    //   onTap: () {
                    //     setState(() {});
                    //   },
                    //   child: Center(
                    //     child: GestureDetector(
                    //       onTap: () {},
                    //       child: Container(
                    //         width: 77.w,
                    //         height: 80.h,
                    //         decoration: BoxDecoration(
                    //           color: lightGreyColor,
                    //           shape: BoxShape.circle,
                    //         ),
                    //         child: Icon(
                    //           Icons.camera_alt_outlined,
                    //           size: 25,
                    //         ),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          _image != null
                              ? Stack(
                                  //  clipBehavior: Clip.none,
                                  children: [
                                    Container(
                                      width: 77.w,
                                      height: 80.w,
                                      // padding: EdgeInsets.only(
                                      //     left: 4.w, right: 5.w, top: 5.h, bottom: 6.h),
                                      decoration: BoxDecoration(
                                        //  borderRadius: BorderRadius.circular(5.r),
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                          image: FileImage(
                                            _image!,
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      right: -.1.w,
                                      top: -.1.h,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.red[50],
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
                                            color: Colors.red,
                                            size: 20,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              : _addImgBtn(context),
                          SizedBox(
                            width: 20.w,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Center(
                      child: Text(
                        'userProfile_name'.tr(),
                        style: GoogleFonts.yantramanav(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600,
                          color: blackkColor,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 54.h,
                    ),
                    Text('username'.tr(),
                        style: GoogleFonts.yantramanav(
                          color: lightGreyColor,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                        )),
                    TextFormField(
                      onChanged: null,
                      style: GoogleFonts.yantramanav(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500,
                          color: lightGreyColor),
                      decoration: InputDecoration(
                        hintText: 'Enter your Name'.tr(),
                        labelText: 'Enter your Name'.tr(),
                        labelStyle: GoogleFonts.yantramanav(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: lightGreyColor),
                        enabledBorder: const UnderlineInputBorder(
                          borderSide:
                              BorderSide(width: 1, color: offWhiteColor),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 37.h,
                    ),
                    Text('email_addres'.tr(),
                        style: GoogleFonts.yantramanav(
                          color: lightGreyColor,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                        )),
                    // CstmTextFieldTemplate(
                    //   fontColor: black39Color,
                    //   isBorder: false,
                    // ),
                    TextFormField(
                      validator: requiredValidator,
                      onChanged: null,
                      style: GoogleFonts.yantramanav(
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w400,
                          color: blackColor),
                      decoration: InputDecoration(
                        labelText: 'Enter Email'.tr(),
                        labelStyle: GoogleFonts.yantramanav(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: lightGreyColor),
                        enabledBorder: const UnderlineInputBorder(
                          borderSide:
                              BorderSide(width: 1, color: offWhiteColor),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 37.h,
                    ),
                    Text('phone_number'.tr(),
                        style: GoogleFonts.yantramanav(
                          color: lightGreyColor,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                        )),
                    SizedBox(
                      height: 12.h,
                    ),
                    numberField(),

                    SizedBox(
                      height: 174.h,
                    ),
                    SizedBox(
                      child: BlueBtn(
                        Horizentalpading: 1.0,
                        title: 'update'.tr(),
                        onPressed: () => manageAccountFunc(),
                      ),
                    ),
                    SizedBox(
                      height: 45.h,
                    )
                  ],
                )),
          ),
        ),
      ),
    );
  }

  //

  /// Get from Camera

  Widget _addImgBtn(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
      padding: EdgeInsets.only(
        left: 4.w,
        right: 5.w,
      ),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              if (_image == null) {
                _showImagePickerSheet(context);
              } else {
                setState(() {
                  _image = null;
                });
              }
            },
            child: Container(
              height: 77.h,
              width: 80.w,
              decoration: BoxDecoration(
                  color: Colors.lightBlue, shape: BoxShape.circle),
              child: Icon(
                Icons.camera_alt_outlined,
                size: 21,
              ),
              // child: ElevatedButton(
              //   style: ButtonStyle(
              //     shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              //         RoundedRectangleBorder(
              //             borderRadius: BorderRadius.circular(5.0),
              //             side: BorderSide(color: Colors.transparent))),
              //     backgroundColor: MaterialStateProperty.all(
              //       _image == null ? Colors.transparent : Colors.transparent,
              //     ),
              //   ),
              //   onPressed: () {
              //     if (_image == null) {
              //       _showImagePickerSheet(context);
              //     } else {
              //       setState(() {
              //         _image = null;
              //       });
              //     }
              //   },
              //   // child: Column(
              //   //   children: [
              //   //     SizedBox(
              //   //       height: 5.h,
              //   //     ),
              //   //     // Icon(
              //   //     //   Icons.add,
              //   //     //   color: lightBluishColor,
              //   //     //   size: 24.0,
              //   //     // ),
              //   //     // Text(
              //   //     //   "add_img",
              //   //     //   style: GoogleFonts.inter(
              //   //     //       fontWeight: FontWeight.w400,
              //   //     //       fontSize: 11.sp,
              //   //     //       color: _image != null ? whiteColor : lightBluishColor),
              //   //     // ),

              //   //     SizedBox(
              //   //       height: 5.h,
              //   //     )
              //   //     // const FittedBox(
              //   //     //     fit: BoxFit.contain, child: Text("(Optional)"))
              //   //   ],
              //   // ),
              // ),
            ),
          ),
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

  void manageAccountFunc() {
    if (_formKey.currentState!.validate()) {
      reUse.goBack(context);
      return;
    }
  }
//--------Number Field Function

  Padding numberField() => Padding(
        padding: EdgeInsets.symmetric(horizontal: 1.w),
        child: InternationalPhoneNumberInput(
          onInputChanged: (PhoneNumber number) {},
          onInputValidated: (bool value) {},
          selectorConfig: const SelectorConfig(
            selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
          ),
          ignoreBlank: false,
          autoValidateMode: AutovalidateMode.disabled,
          textStyle: TextStyle(
              color: Colors.black,
              fontSize: 17.sp,
              fontWeight: FontWeight.w400),
          selectorTextStyle: const TextStyle(color: Colors.black),
          initialValue: number,
          inputDecoration: InputDecoration(
            border: outlineInputBorder,
            enabledBorder: underlineInputBorder,
            focusedBorder: underlineInputBorder,
          ),
          textFieldController: controller,
          formatInput: false,
          keyboardType: const TextInputType.numberWithOptions(
              signed: true, decimal: true),
          inputBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2.w, color: blackColor),
          ),
          onSaved: (PhoneNumber number) {
            //print('On Saved: $number');
          },
        ),
      );
}
