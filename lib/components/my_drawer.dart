import 'package:flutter/material.dart';
import 'package:minimal_shop/components/my_list_tile.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              // drawer logo
              DrawerHeader(
                child: Center(
                  child: Icon(
                    Icons.shopping_bag,
                    color: Theme.of(context).colorScheme.inversePrimary,
                    size: 72,
                  ),
                ),
              ),

              const SizedBox(
                height: 25,
              ),

              // shop tile
              MyListTile(icon: Icons.home, title: "Shop", onTap: () => Navigator.pop(context)),

              // cart tile
              MyListTile(
                  icon: Icons.shopping_cart, title: "Cart", onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/cart_page');
                  }),
            ],
          ),

          // exit shop tile
          Padding(
            padding: const EdgeInsets.only(bottom: 25),
            child: MyListTile(icon: Icons.logout, title: "Exit", onTap: () => Navigator.pushNamedAndRemoveUntil(context, '/intro_page', (route) => false)),
          ),
        ],
      ),
    );
  }
}
