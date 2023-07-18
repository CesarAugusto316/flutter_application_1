import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 4.0,
      leading: const Padding(
        padding: EdgeInsets.all(10.0),
        child: CircleAvatar(
          backgroundImage: NetworkImage(
              'https://i.pinimg.com/originals/74/e4/1d/74e41d48eddb609fd83d75ee9cb516e9.jpg'),
        ),
      ),
      title: Text('Carlotita',
          style:
              TextStyle(color: Theme.of(context).colorScheme.inversePrimary)),
      centerTitle: false,
      backgroundColor: Theme.of(context).colorScheme.primary,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(66);
}
