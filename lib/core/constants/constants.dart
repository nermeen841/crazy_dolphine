// ignore_for_file: prefer_typing_uninitialized_variables, avoid_print, depend_on_referenced_packages

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:html/parser.dart';
import 'package:padle_me/core/router/router.dart';
import 'package:padle_me/presentation/screen/auth/login/login.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'colors.dart';
import 'text_theme.dart';

appbarNoTitle() {
  return AppBar(
    toolbarHeight: 0.0,
    elevation: 0.0,
  );
}

/////////////////////////////////////////////////

late SharedPreferences prefs;

Future startShared() async {
  prefs = await SharedPreferences.getInstance();
}

//////////////////////////////////////////////////////////

String translateString(String english, String arabic) {
  return prefs.getString("lang") == 'en' ? english : arabic;
}

////////////////////////////////////////////////////////////

double screenWidth(context) {
  return MediaQuery.of(context).size.width;
}

///////////////////////////////////////////////////////////

double screenHeight(context) {
  return MediaQuery.of(context).size.height;
}

///////////////////////////////////////////////////////////

customCachedNetworkImage({required String url, required context, BoxFit? fit}) {
  try {
    // ignore: unnecessary_null_comparison
    if (url == null || url == "") {
      return Icon(
        Icons.error,
        color: kMainColor,
      );
    } else {
      return Container(
        color: Colors.transparent,
        width: MediaQuery.of(context).size.width,
        child: (Uri.parse(url).isAbsolute)
            ? CachedNetworkImage(
                imageUrl: url,
                fit: fit,
                placeholder: (context, url) => Icon(
                      Icons.error,
                      color: kMainColor,
                    ),
                errorWidget: (context, url, error) {
                  return Icon(
                    Icons.error,
                    color: kMainColor,
                  );
                })
            : Icon(
                Icons.error,
                color: kMainColor,
              ),
      );
    }
  } catch (e) {
    print(e.toString());
  }
}

///////////////////////////////////////////////////////////////////

Widget loading() {
  return Center(
    child: CircularProgressIndicator(
      color: kMainColor,
    ),
  );
}

///////////////////////////////////////////////////////////////////

String parseHtmlString(String htmlString) {
  final document = parse(htmlString);
  final String parsedString = parse(document.body!.text).documentElement!.text;
  return parsedString;
}

///////////////////////////////////////////////////////////////////////////////////

homeBottomSheet({required BuildContext context, required Widget child}) {
  var w = MediaQuery.of(context).size.width;
  return showModalBottomSheet(
    backgroundColor: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
          topRight: Radius.circular(w * 0.07),
          topLeft: Radius.circular(w * 0.07)),
    ),
    isDismissible: true,
    isScrollControlled: false,
    context: context,
    builder: (context) => Padding(
      padding: MediaQuery.of(context).viewInsets,
      child: child,
    ),
  );
}

////////////////////////////////////////////////////////////////////////

void dialog(context) {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return WillPopScope(
        child: Opacity(
          opacity: 0.8,
          child: Container(
            width: screenWidth(context),
            height: screenHeight(context),
            color: Colors.black12,
            child: Center(
              child: CircularProgressIndicator(
                color: kMainColor,
              ),
            ),
          ),
        ),
        onWillPop: () async => false,
      );
    },
  );
}

/////////////////////////////////////////////////////////////////////////////
customAppbar({
  String? title,
  required context,
  VoidCallback? press,
  List<Widget>? actions,
  Widget? leadeing,
}) {
  return AppBar(
    elevation: 0,
    backgroundColor: kMainColor,
    centerTitle: true,
    automaticallyImplyLeading: false,
    iconTheme: const IconThemeData(
      color: Colors.white,
    ),
    actions: actions ?? [],
    leading: leadeing,
    title: Text(
      title ?? "",
      style: headingStyle1(
        context: context,
        color: Colors.white,
      ),
    ),
  );
}

////////////////////////////////////////////////////////////////////////

logoutDialog({
  required context,
  Widget? title,
  Widget? content,
  List<Widget>? actions,
}) {
  return showDialog(
    context: context,
    builder: (context) => AlertDialog(
      insetPadding: EdgeInsets.zero,
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(screenWidth(context) * 0.05),
        ),
      ),
      title: title,
      content: content,
      actions: actions,
    ),
  );
}

/////////////////////////////////////////////////////////////////////////////
AppBar layoutAppbar() {
  return AppBar(
    automaticallyImplyLeading: false,
    elevation: 0,
    backgroundColor: Colors.white,
    actions: [
      IconButton(
        onPressed: () => MagicRouter.navigateAndPopAll(const LoginScreen()),
        icon: Icon(
          Icons.scuba_diving_sharp,
          color: kMainColor,
        ),
      ),
    ],
  );
}
