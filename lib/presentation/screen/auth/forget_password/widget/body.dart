import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:padle_me/core/constants/colors.dart';
import 'package:padle_me/core/constants/constants.dart';
import 'package:padle_me/core/helper/validation.dart';
import 'package:padle_me/core/router/router.dart';
import 'package:padle_me/core/widgets/custom_buttons_widget.dart';
import 'package:padle_me/core/widgets/custom_text_field.dart';
import 'package:padle_me/core/widgets/space_widget.dart';
import 'package:padle_me/generator/locale_keys.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:padle_me/presentation/screen/auth/code/code_screen.dart';
import 'package:padle_me/presentation/widget/auth_welcome_message.dart';
import 'package:padle_me/presentation/widget/body_container.dart';

class ForgetPasswordBody extends StatefulWidget {
  const ForgetPasswordBody({super.key});

  @override
  State<ForgetPasswordBody> createState() => _ForgetPasswordBodyState();
}

class _ForgetPasswordBodyState extends State<ForgetPasswordBody> {
  final formKey = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  FocusNode emailFocus = FocusNode();

  @override
  Widget build(BuildContext context) {
    return BodyContainerStyle(
      child: Form(
        key: formKey,
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            horizontal: screenWidth(context) * 0.05,
            vertical: screenHeight(context) * 0.03,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const VerticalSpace(value: 4),
              AuthWelcomMessage(
                title: LocaleKeys.RESET_PASSWORD.tr(),
                subtitle: LocaleKeys.PASSWORD_TITLE.tr(),
              ),
              const VerticalSpace(value: 10),
              CustomTextFormField(
                borderColor: Colors.transparent,
                hint: "Email",
                controller: email,
                focusNode: emailFocus,
                inputType: TextInputType.emailAddress,
                prefix: Icon(
                  CupertinoIcons.person,
                  color: greyIcon.withOpacity(0.4),
                ),
                validator: (value) => validateEmail(value!),
                onEditingComplete: () {
                  emailFocus.unfocus();
                },
              ),
              const VerticalSpace(value: 20),
              CustomGeneralButton(
                text: LocaleKeys.RESET_PASS_BUTTON.tr(),
                textColor: Colors.white,
                color: buttonColor,
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    MagicRouter.navigateAndPReplacement(const CodeScreen());
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
