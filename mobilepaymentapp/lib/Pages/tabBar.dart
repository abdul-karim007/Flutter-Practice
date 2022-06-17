import 'package:flutter/material.dart';
import 'package:mobilepaymentapp/Pages/notifications.dart';
import 'package:mobilepaymentapp/Pages/profile.dart';

import '../Constants/ImageConstants/imgconstants.dart';
import '../Constants/TextConstants/Textconstant.dart';
import '../Constants/colorConstants/colorConstants.dart';

class tabbarView extends StatelessWidget {
  const tabbarView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      child: Scaffold(appBar: AppBar(title: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 8,
                ),
                child: IconButton(
                  icon: Image.asset(ImageConstants.dp),
                  iconSize: 50,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Profile()),
                    );
                  },
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: TextConstant.homepageSearchBar,
                      hintStyle: TextStyle(
                          color: Color(ColorConstants.color35),
                          fontFamily: TextConstant.sansSerif,
                          fontFamilyFallback: [TextConstant.spartanSemiBold]),
                      suffixIcon: Icon(
                        Icons.search,
                        color: Color(
                          ColorConstants.color35,
                        ),
                        size: 30,
                      ),
                      filled: true,
                      fillColor: Color(ColorConstants.homeSearchbar),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: TextConstant.sansSerif,
                      fontFamilyFallback: [TextConstant.spartanBold],
                      color: Color(ColorConstants.color34),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 12),
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    CircleAvatar(
                      radius: 28,
                      backgroundColor: Color(ColorConstants.homeSearchbar),
                      child: IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Notifications()),
                          );
                        },
                        iconSize: 40,
                        color: Color(ColorConstants.color35),
                        icon: Icon(Icons.notifications_outlined),
                      ),
                    ),
                    Positioned(
                      child: CircleAvatar(
                        radius: 5,
                      ),
                      top: 12,
                      right: 12,
                    )
                  ],
                ),
              ),
            ],
          ),),),
      length: 4,
      
    );
  }
}