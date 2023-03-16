import 'package:advisor_user_app/ui/pages/auth/countrylist/countrylist_provider.dart';
import 'package:advisor_user_app/ui/pages/main/main/main_screen.dart';
import 'package:advisor_user_app/ui/shared/widgets/blue_btn.dart';
import 'package:advisor_user_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CountryListScreen extends StatefulWidget {
  static const id = '/CountryListScreen';
  const CountryListScreen({super.key});

  @override
  State<CountryListScreen> createState() => _CountryListScreenState();
}

class _CountryListScreenState extends State<CountryListScreen> {
  // ignore: avoid_init_to_null
  var selectedIndex = null;
  var country;
  var countryCode;

  @override
  void initState() {
    // TODO: implement initState
    // Future.delayed(Duration.zero).then((value) =>
    //     Provider.of<CountryListProvider>(context, listen: true)
    //         .getCountryList());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final countrylistprovider =
        Provider.of<CountryListProvider>(context, listen: false);
    // void itemChange(bool val, int index) {
    //   setState(() {
    //     countrylistprovider.countrylist[index].isCheck = val;
    //   });
    //  }

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 1.0.h),
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 56.h, left: 25.w),
              child: Text(
                'Select Country ',
                style: GoogleFonts.yantramanav(
                  color: radioblackColor,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 110.h, left: 25.w, right: 25.w),
              child: TextField(
                style: GoogleFonts.yantramanav(
                  color: greyColor,
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w500,
                ),

                // ignore: prefer_const_constructors
                decoration: InputDecoration(
                  fillColor: whiteColor,

                  hintText: 'Search Your Country...',
                  hintStyle: GoogleFonts.yantramanav(
                    color: greyColor,
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500,
                  ),
                  prefixIcon: const Padding(
                    padding: EdgeInsets.all(0.0),
                    child: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                  ), // icon i
                  contentPadding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 20.0),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: greyE3Color, width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.lightBlueAccent, width: 2.0),
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                ),
                onChanged: (value) {
                  //Do something with the user input.
                  countrylistprovider.updateFilter(value);
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 153.h),
              child: Center(
                child: FutureBuilder(
                    future: countrylistprovider.getCountryList(),
                    builder: (context, snapshot) {
                      if (ConnectionState.waiting == snapshot.connectionState) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      } else if (snapshot.hasError) {
                        return Text('${snapshot.error}');
                      } else {
                        return Consumer<CountryListProvider>(
                            builder: (context, provider, child) {
                          var filterCountry =
                              provider.searchCountry(provider.getFilter);
                          return ListView.builder(
                              itemCount: filterCountry.length,
                              itemBuilder: (BuildContext context, int index) {
                                return Column(
                                  children: [
                                    CheckboxListTile(
                                      title: Text(
                                        filterCountry[index]
                                            .countryname
                                            .toString(),
                                        style: TextStyle(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w500,
                                          color: black39Color,
                                        ),
                                      ),

                                      secondary: Image(
                                        height: 20,
                                        width: 25,
                                        image: NetworkImage(
                                            "https://flagcdn.com/16x12/${filterCountry[index].countrycode!.toLowerCase()}.png"),
                                      ),

                                      activeColor: Colors.green,
                                      checkColor: Colors.white,

                                      // selected: select,
                                      value: provider.selectedIndex == index,
                                      onChanged: (bool? val) {
                                        provider.passIndex(index);

                                        // setState(() {
                                        //   selectedIndex = index;
                                        //   country = countrylistprovider
                                        //       .countrylist[index].countryname;

                                        //   countryCode = countrylistprovider
                                        //       .countrylist[index].countrycode;
                                        // });
                                      }, //
                                      //  <-- leading Checkbox
                                    ),
                                    Divider(
                                      color: whiteF2Color,
                                      indent: 24.w,
                                      endIndent: 24.w,
                                      height: 2.h,
                                    ),
                                  ],
                                );
                              });
                        });

                        // By default, show a loading spinner.
                      }
                    }),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 57.h, left: 24.w, right: 24.w),
              child: Positioned(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: BlueBtn(
                    Horizentalpading: 1.0,
                    title: 'Continue',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MainScreen(
                                //c    countryName: countrylistprovider.country,
                                )),
                      );
                      debugPrint(selectedIndex.toString());
                    },
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
