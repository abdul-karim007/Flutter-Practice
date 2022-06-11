import 'package:flutter/material.dart';

dp(dp) {
  return Padding(
    padding: const EdgeInsets.only(left: 15, right: 15),
    child: CircleAvatar(
      backgroundColor: Colors.transparent,
      child: Image(
        image: AssetImage(dp),
        height: 40,
        width: 40,
      ),
    ),
  );
}
