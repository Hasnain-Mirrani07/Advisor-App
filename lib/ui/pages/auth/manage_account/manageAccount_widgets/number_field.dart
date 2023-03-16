// ignore_for_file: prefer_const_constructors

import 'package:advisor_user_app/utils/colors.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class NumberField extends StatefulWidget {
  const NumberField({super.key});

  @override
  State<NumberField> createState() => _NumberFieldState();
}

class _NumberFieldState extends State<NumberField> {
  String initialCountry = 'SA';
  PhoneNumber number = PhoneNumber(isoCode: 'SA');

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            InternationalPhoneNumberInput(
              onInputChanged: (PhoneNumber number) {
                //  print(number.phoneNumber);
              },
              errorMessage: 'invalid phone no'.tr(),
              onInputValidated: (bool value) {
                print(value);
              },
              selectorConfig: SelectorConfig(
                selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                //trailingSpace: true,
              ),
              ignoreBlank: false,
              autoValidateMode: AutovalidateMode.onUserInteraction,
              selectorTextStyle: TextStyle(color: Colors.black),
              initialValue: number,
              textStyle: TextStyle(
                  fontSize: 17, color: blackColor, fontWeight: FontWeight.w400),
              formatInput: true,
              keyboardType:
                  TextInputType.numberWithOptions(signed: false, decimal: true),
              inputBorder: const UnderlineInputBorder(
                borderSide: BorderSide(width: 1, color: offWhiteColor),
              ),
              onSaved: (PhoneNumber number) {
                //   print('On Saved: $number');
              },
              inputDecoration: InputDecoration(
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(width: 1, color: offWhiteColor),
                ),
              ),
            ),

            // ElevatedButton(
            //   onPressed: () {},
            //   child: Text('Validate'),
            // ),
            // ElevatedButton(
            //   onPressed: () {
            //     getPhoneNumber('+15417543010');
            //   },
            //   child: Text('Update'),
            // ),
            // ElevatedButton(
            //   onPressed: () {},
            //   child: Text('Save'),
            // ),
          ],
        ),
      ),
    );
  }

  void getPhoneNumber(String phoneNumber) async {
    PhoneNumber number =
        await PhoneNumber.getRegionInfoFromPhoneNumber(phoneNumber, 'US');

    setState(() {
      this.number = number;
    });
  }

  @override
  void dispose() {
    super.dispose();
  }
}
