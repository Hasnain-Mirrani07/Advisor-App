import 'dart:convert';

import 'package:advisor_user_app/ui/pages/auth/countrylist/country_model.dart';
import 'package:flutter/cupertino.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CountryListProvider with ChangeNotifier {
  List<CountryModel> _countrylist = [];
  String _filter = '';
  String get getFilter => _filter;
  //----------------------------------
  updateFilter(String value) {
    _filter = value;
    notifyListeners();
  }

  //----------------------------------

  //final List<bool> _isChecked = List<bool>.filled(_countrylist.length, false);

  List<CountryModel> get countrylist {
    return _countrylist;
  }

  void countrylsitFu() {
    _countrylist;
  }

  List<CountryModel> searchCountry(String query) {
    var suggestion = _countrylist
        .where((element) =>
            element.countryname!.toLowerCase().contains(query.toLowerCase()))
        .toList();

    return suggestion;
    // notifyListeners();
  }

  var country;

  var countryCode;
  // String get countryCode {
  //   return _countryCode;
  // }

  int _selectedIndex = 1;
  int get selectedIndex {
    return _selectedIndex;
  }

  void passIndex(i) {
    _selectedIndex = i;
    country = _countrylist[i].countryname;
    countryCode = _countrylist[i].countrycode;
    notifyListeners();
  }

  Future<void> getCountryList() async {
    try {
      final response =
          await http.get(Uri.parse('https://api.first.org/data/v1/countries'));
      //data
      if (response.statusCode == 200) {
        final extractedData = jsonDecode(response.body);
        //debugPrint("data=${extractedData['data']}");
        final extractedMapData = extractedData['data'] as Map<String, dynamic>;

        //print("mappedDATA=$extractedData['status']");
        //   int i = 0;
        //   print('json daata');
        //debugPrint(extractedMapData.length.toString());
        final List<CountryModel> countrymodellist = [];

        extractedMapData.forEach((key, value) {
          // debugPrint(value.toString());
          //debugPrint("${key}");
          //print('$value');
          countrymodellist.add(CountryModel(
            countrycode: key,
            countryname: value['country'],
            isCheck: false,
          ));

          // countrylist.forEach((element) {
          //   return print("mappedDATA=${element.countryname}");
          //   });
          //  print("mappedDATA=${countrylist.}");
        });

        _countrylist = countrymodellist;
        // countrymodellist.forEach((element) {
        //   return print("mappedDATA=${element.countryname}");
        // });
        //  print('outside loop');
        //debugPrint(countrymodellist.length.toString());
        //   notifyListeners();

        // CountryListModel.fromJson(extractedData);
      } else {
        throw Exception('Failed to load album');
      }
    } catch (e) {
      // TODO
      //  debugPrint("e=$e");
    }
    //print('outside loop');
  }
}
