import 'package:your_simplify_assessment/models/bottom_nav.dart';

List<BottomNavItem> getBottomItems() {
  return [
    BottomNavItem('Home', 'assets/images/home.png'),
    BottomNavItem('Payment', 'assets/images/cardholder.png'),
    BottomNavItem('Cards', 'assets/images/creditCard.png'),
    BottomNavItem('Settings', 'assets/images/settings.png'),
  ];
}