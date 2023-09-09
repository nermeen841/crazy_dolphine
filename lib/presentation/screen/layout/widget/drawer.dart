// ignore_for_file: deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:padle_me/core/constants/colors.dart';
import 'package:padle_me/core/constants/constants.dart';
import 'package:padle_me/core/constants/text_theme.dart';
import 'package:padle_me/core/widgets/space_widget.dart';
import 'package:padle_me/generator/locale_keys.dart';
import 'package:easy_localization/easy_localization.dart';

class DrawerItem extends StatefulWidget {
  const DrawerItem({super.key});

  @override
  State<DrawerItem> createState() => _DrawerItemState();
}

class _DrawerItemState extends State<DrawerItem> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      width: screenWidth(context) * 0.7,
      child: Column(
        children: [
          DrawerHeader(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: selectionColor,
                  radius: screenWidth(context) * 0.08,
                ),
                const HorizontalSpace(value: 0.7),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      LocaleKeys.HI.tr(),
                      style: headingStyle3(
                        context: context,
                        color: kMainColor,
                      ),
                    ),
                    Text(
                      "Samer Alzoubi",
                      style: headingStyle2(
                        context: context,
                        color: kMainColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const VerticalSpace(value: 1),
          ListTile(
            horizontalTitleGap: 0.0,
            leading: Icon(
              Icons.notifications_none,
              color: kMainColor,
              size: screenWidth(context) * 0.08,
            ),
            title: Text(
              LocaleKeys.NOTIFICATIONS.tr(),
              style: bodyStryle(
                context: context,
                color: kMainColor,
              ),
            ),
          ),
          ListTile(
            horizontalTitleGap: 0.0,
            leading: Icon(
              CupertinoIcons.gift,
              color: kMainColor,
              size: screenWidth(context) * 0.08,
            ),
            title: Text(
              LocaleKeys.REWARD.tr(),
              style: bodyStryle(
                context: context,
                color: kMainColor,
              ),
            ),
          ),
          ListTile(
            horizontalTitleGap: 0.0,
            leading: Icon(
              CupertinoIcons.arrow_counterclockwise,
              color: kMainColor,
              size: screenWidth(context) * 0.065,
            ),
            title: Text(
              LocaleKeys.BOOK_HISTORY.tr(),
              style: bodyStryle(
                context: context,
                color: kMainColor,
              ),
            ),
          ),
          ListTile(
            horizontalTitleGap: 0.0,
            leading: Icon(
              CupertinoIcons.cart,
              color: kMainColor,
              size: screenWidth(context) * 0.065,
            ),
            title: Text(
              LocaleKeys.ORDERS_HISTORY.tr(),
              style: bodyStryle(
                context: context,
                color: kMainColor,
              ),
            ),
          ),
          ListTile(
            horizontalTitleGap: 0.0,
            leading: Icon(
              CupertinoIcons.info_circle,
              color: kMainColor,
              size: screenWidth(context) * 0.065,
            ),
            title: Text(
              LocaleKeys.ABOUT.tr(),
              style: bodyStryle(
                context: context,
                color: kMainColor,
              ),
            ),
          ),
          ListTile(
            horizontalTitleGap: 0.0,
            onTap: () {
              // if (prefs.getString("language") == null ||
              //     prefs.getString("language") == "English") {
              //   setState(() {
              //     setLocale("ar");
              //     context.locale = const Locale("ar");
              //     prefs.setString("lang", "ar");
              //     prefs.setString("language", "العربية");
              //   });
              // } else {
              //   setState(() {
              //     setLocale("en");
              //     context.locale = const Locale("en");
              //     prefs.setString("lang", "en");
              //     prefs.setString("language", "English");
              //   });
              // }
              // MagicRouter.navigateAndPopAll(const LoginScreen());
            },
            leading: Icon(
              CupertinoIcons.globe,
              color: kMainColor,
              size: screenWidth(context) * 0.065,
            ),
            title: Text(
              prefs.getString("language") ?? "English",
              style: bodyStryle(
                context: context,
                color: kMainColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
