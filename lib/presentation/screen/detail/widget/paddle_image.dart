import 'package:flutter/material.dart';
import 'package:padle_me/core/constants/constants.dart';
import 'package:padle_me/core/router/router.dart';

class PaddleImageDetailItem extends StatelessWidget {
  const PaddleImageDetailItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: screenHeight(context) * 0.3,
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: NetworkImage(
            "https://img.freepik.com/free-photo/tennis-paddles-balls-arrangement_23-2149434236.jpg?w=360&t=st=1691220182~exp=1691220782~hmac=fdcd8c112da11240d1801ac7184651c8eae4ab8971116f9e36c9e6d71b875cac",
          ),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(screenWidth(context) * 0.05),
          topRight: Radius.circular(screenWidth(context) * 0.05),
        ),
      ),
      padding: EdgeInsets.symmetric(
        vertical: screenHeight(context) * 0.015,
        horizontal: screenWidth(context) * 0.02,
      ),
      child: Align(
        alignment: AlignmentDirectional.topStart,
        child: InkWell(
          onTap: () => MagicRouter.pop(),
          child: CircleAvatar(
            radius: screenWidth(context) * 0.05,
            backgroundColor: Colors.white30,
            child: const Center(
              child: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
