import 'package:flutter/material.dart';

class CountryModel {
  final String? countryname;
  final String? countrycode;
  bool isCheck;
  CountryModel(
      {required this.countrycode,
      required this.countryname,
      required this.isCheck});
}
