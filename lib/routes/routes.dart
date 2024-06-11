import 'package:get/get.dart';
import 'package:jiitak/ui/screens/homepage.dart';
import 'package:jiitak/ui/screens/screen1.dart';
import 'package:jiitak/ui/screens/screen2.dart';
import 'package:jiitak/ui/screens/screen3.dart';

//  my plan is to define all the possible routes here
class Routes {
  static const String screen1 = '/screen1';
  static const String screen2 = '/screen2';
  static const String screen3 = '/screen3';
  static const String homepage = '/homepage';

  static List<GetPage> getPages = [
    GetPage(name: homepage, page: () => const HomePage()),
    GetPage(name: screen1, page: () => const Screen1()),
    GetPage(name: screen2, page: () => const Screen2()),
    GetPage(name: screen3, page: () => const Screen3()),
  ];
}
