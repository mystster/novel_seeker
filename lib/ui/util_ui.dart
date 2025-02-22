import 'package:flutter/material.dart';

  Widget tag(BuildContext context, bool? enable, String text) {
    if (enable != null && enable) {
      return Container(
        margin: const EdgeInsets.only(left: 5),
        padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 0),
        decoration: BoxDecoration(
          border: Border.all(color: Theme.of(context).colorScheme.primary),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Text(
          text,
          selectionColor: Theme.of(context).colorScheme.primary,
        ),
      );
    } else {
      return Container();
    }
  }

  Widget textWithIcon(IconData icon, String text, {double mergin = 4.0}) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon),
        SizedBox(width: mergin),
        Flexible(child: Text(text, overflow: TextOverflow.ellipsis)),
      ],
    );
  }