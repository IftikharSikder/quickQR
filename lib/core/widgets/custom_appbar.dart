import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool? isLeading;
  final Widget? leadingWidget;
  final bool? centerTitle;
  const CustomAppbar({super.key, required this.title, this.leadingWidget, this.centerTitle, this.isLeading = false});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title, style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1)),
      centerTitle: centerTitle,
      leading: isLeading! && leadingWidget!=null? leadingWidget:null,

    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
