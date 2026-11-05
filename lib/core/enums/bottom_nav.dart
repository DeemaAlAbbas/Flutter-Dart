import 'dart:ffi';

enum BottomNavItem {
  allProducts,
  home,
  cart;

  String get icon {
    switch (this) {
      case BottomNavItem.home:
        return 'ic_home';
      case BottomNavItem.allProducts:
        return 'ic_products';
      case BottomNavItem.cart:
        return 'ic_cart';
    }
  }

  int get indexValue {
    switch (this) {
      case BottomNavItem.home:
        return 1;
      case BottomNavItem.allProducts:
        return 0;
      case BottomNavItem.cart:
        return 2;
    }
  }

  String get route {
    switch (this) {
      case BottomNavItem.home:
        return "/home";
      case BottomNavItem.allProducts:
        return "/allProducts";
      case BottomNavItem.cart:
        return "/cart";
    }
  }
}
