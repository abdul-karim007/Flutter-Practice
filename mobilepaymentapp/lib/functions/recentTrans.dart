import 'package:flutter/material.dart';

import '../Constants/ImageConstants/imgconstants.dart';
import '../Constants/TextConstants/Textconstant.dart';
import '../Constants/colorConstants/colorConstants.dart';
import 'dpcircleavat.dart';

recentTrans() {
  return Column(
    children: [
      dp(ImageConstants.dp),
      Text(
        TextConstant.ali,
        style: TextStyle(color: Color(ColorConstants.color23)),
      )
    ],
  );
}
