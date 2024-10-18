import 'package:flutter/material.dart';

class AppBarCustomWidget extends StatelessWidget
    implements PreferredSizeWidget {
  const AppBarCustomWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      automaticallyImplyLeading: false,
      title: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: Text(
          "FarmerEats",
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(40);
}