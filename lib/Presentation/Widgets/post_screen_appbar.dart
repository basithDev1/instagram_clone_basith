import 'package:flutter/material.dart';

class PostScreenAppBar extends StatelessWidget {
  final String? text;
  final Widget? widget;
  final Widget? iconButton;
  final List<Widget>? actions;
  const PostScreenAppBar(
      {super.key, this.iconButton, this.actions, this.widget, this.text});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      leading: iconButton,
      title: widget ??
          Text(
            text ?? 'New Post',
            style: const TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.bold,
            ),
          ),
      centerTitle: false,
      actions: actions,
    );
  }
}
