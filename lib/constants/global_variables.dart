import 'package:flutter/material.dart';

String uri = 'http://192.168.1.88:3000';
// String uri = 'http://172.17.1.144:3000';

class GlobalVariables {
  // COLORS
  static const appBarGradient = LinearGradient(
    colors: [
      Color.fromARGB(255, 19, 133, 4),
      Color.fromARGB(255, 74, 241, 68),
    ],
    stops: [0.5, 1.0],
  );

  static const secondaryColor = Color.fromARGB(255, 5, 124, 21);
  static const backgroundColor = Colors.white;
  static const Color greyBackgroundCOlor = Colors.white;
  static var selectedNavBarColor = Color.fromARGB(255, 19, 133, 4);
  static const unselectedNavBarColor = Colors.black87;

  // STATIC IMAGES
  static const List<String> carouselImages = [
    'https://www.dreamstime.com/website-banner-different-medical-equipment-smartphone-screen-concept-online-pharmacy-store-can-be-used-mobile-image150310900.jpg',
    'https://images-eu.ssl-images-amazon.com/images/G/31/img2021/Vday/bwl/English.jpg',
    'https://images-eu.ssl-images-amazon.com/images/G/31/img22/Wireless/AdvantagePrime/BAU/14thJan/D37196025_IN_WL_AdvantageJustforPrime_Jan_Mob_ingress-banner_1242x450.jpg',
    'https://images-na.ssl-images-amazon.com/images/G/31/Symbol/2020/00NEW/1242_450Banners/PL31_copy._CB432483346_.jpg',
    'https://images-na.ssl-images-amazon.com/images/G/31/img21/shoes/September/SSW/pc-header._CB641971330_.jpg',
  ];

  static const List<Map<String, String>> categoryImages = [
    {
      'title': 'Medicines',
      'image': 'assets/images/medie.png',
    },
    {
      'title': 'Babies',
      'image': 'assets/images/beb.png',
    },
    {
      'title': 'Women',
      'image': 'assets/images/women.png',
    },
    {
      'title': 'Men',
      'image': 'assets/images/men.png',
    },
    {
      'title': 'Old',
      'image': 'assets/images/old.png',
    },
  ];
}
