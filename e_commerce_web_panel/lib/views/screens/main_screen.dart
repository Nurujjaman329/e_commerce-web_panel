import 'package:e_commerce_web_panel/views/screens/side_bar_screens/dashboard_screen.dart';
import 'package:e_commerce_web_panel/views/screens/side_bar_screens/vendor_screens.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_admin_scaffold/admin_scaffold.dart';

import 'side_bar_screens/categories_screen.dart';
import 'side_bar_screens/orders_screens.dart';
import 'side_bar_screens/products_screen.dart';
import 'side_bar_screens/upload_banners_screen.dart';
import 'side_bar_screens/withdrawl_screens.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  Widget _selectedItem = DashboardScreen();

  screenSelector(item) {
    switch (item.route) {
      case DashboardScreen.routeName:
        setState(() {
          _selectedItem = DashboardScreen();
        });

        break;

      case VendorScreens.routeName:
        setState(() {
          _selectedItem = VendorScreens();
        });

        break;

      case WithdrawlScreens.routeName:
        setState(() {
          _selectedItem = WithdrawlScreens();
        });

        break;

      case OrdersScreens.routeName:
        setState(() {
          _selectedItem = OrdersScreens();
        });

        break;

      case CategoriesScreen.routeName:
        setState(() {
          _selectedItem = CategoriesScreen();
        });

        break;

      case ProductsScreen.routeName:
        setState(() {
          _selectedItem = ProductsScreen();
        });

        break;

      case UploadBannersScreen.routeName:
        setState(() {
          _selectedItem = UploadBannersScreen();
        });

        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return AdminScaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Management'),
        ),
        sideBar: SideBar(
          items: [
            AdminMenuItem(
              title: 'Dashboard',
              icon: Icons.dashboard,
              route: DashboardScreen.routeName,
            ),
            AdminMenuItem(
              title: 'Vendors',
              icon: CupertinoIcons.person_3,
              route: VendorScreens.routeName,
            ),
            AdminMenuItem(
              title: 'Withdrawl',
              icon: CupertinoIcons.money_dollar,
              route: WithdrawlScreens.routeName,
            ),
            AdminMenuItem(
              title: 'Orders',
              icon: CupertinoIcons.shopping_cart,
              route: OrdersScreens.routeName,
            ),
            AdminMenuItem(
              title: 'Categories',
              icon: Icons.category,
              route: CategoriesScreen.routeName,
            ),
            AdminMenuItem(
              title: 'Products',
              icon: Icons.shop,
              route: ProductsScreen.routeName,
            ),
            AdminMenuItem(
              title: 'Upload Banners',
              icon: CupertinoIcons.add,
              route: UploadBannersScreen.routeName,
            ),
          ],
          selectedRoute: '',
          onSelected: (item) {
            screenSelector(item);
          },
        ),
        body: _selectedItem);
  }
}
