import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:padle_me/core/constants/colors.dart';
import 'package:padle_me/core/constants/constants.dart';
import 'package:padle_me/core/constants/text_theme.dart';
import 'package:padle_me/core/helper/validation.dart';
import 'package:padle_me/core/router/router.dart';
import 'package:padle_me/core/widgets/custom_buttons_widget.dart';
import 'package:padle_me/core/widgets/custom_text_field.dart';
import 'package:padle_me/core/widgets/space_widget.dart';
import 'package:padle_me/generator/locale_keys.dart';
import 'package:padle_me/presentation/screen/auth/register/register.dart';
import 'package:padle_me/presentation/widget/auth_welcome_message.dart';
import 'package:padle_me/presentation/widget/body_container.dart';
import 'package:easy_localization/easy_localization.dart';
import '../../forget_password/forget_password.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({super.key});

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  final formKey = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  bool showPassword = true;
  FocusNode emailFocus = FocusNode();
  FocusNode passwordFocus = FocusNode();

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
            children: [
              const VerticalSpace(value: 4),
              AuthWelcomMessage(
                title: LocaleKeys.LOGIN_TITLE.tr(),
                subtitle: LocaleKeys.LOGIN_SUBTITLE.tr(),
              ),
              const VerticalSpace(value: 3),
              CustomTextFormField(
                borderColor: Colors.transparent,
                hint: "Email",
                controller: email,
                focusNode: emailFocus,
                inputType: TextInputType.emailAddress,
                prefix: Icon(
                  CupertinoIcons.mail,
                  color: greyIcon.withOpacity(0.4),
                ),
                validator: (value) => validateEmail(value!),
                onEditingComplete: () {
                  emailFocus.unfocus();
                  FocusScope.of(context).requestFocus(passwordFocus);
                },
              ),
              const VerticalSpace(value: 2),
              CustomTextFormField(
                borderColor: Colors.transparent,
                hint: "password",
                inputType: TextInputType.text,
                controller: password,
                focusNode: passwordFocus,
                isPassword: showPassword,
                suffix: InkWell(
                  onTap: () => setState(() {
                    showPassword = !showPassword;
                  }),
                  child: Icon(
                    (showPassword)
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined,
                    color: greyIcon.withOpacity(0.4),
                  ),
                ),
                prefix: Icon(
                  Icons.lock_outline,
                  color: greyIcon.withOpacity(0.4),
                ),
                validator: (value) => validatePassword(value!),
                onEditingComplete: () {
                  passwordFocus.unfocus();
                },
              ),
              Align(
                alignment: AlignmentDirectional.bottomEnd,
                child: TextButton(
                  onPressed: () =>
                      MagicRouter.navigateTo(const ForgetPasswordScreen()),
                  child: Text(
                    LocaleKeys.FORGET_PASSWORD.tr(),
                    style: headingStyle3(
                      context: context,
                      color: colorBlue,
                    ).copyWith(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ),
              const VerticalSpace(value: 2),
              CustomGeneralButton(
                text: LocaleKeys.LOGIN_BUTTON.tr(),
                textColor: Colors.white,
                color: buttonColor,
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    // MagicRouter.navigateAndPopAll(const LayoutScreen());
                  }
                },
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    LocaleKeys.NOT_HAVE_ACCOUNT.tr(),
                    style: bodyStryle(
                      context: context,
                      color: kMainColor,
                    ),
                  ),
                  TextButton(
                    onPressed: () =>
                        MagicRouter.navigateTo(const RegisterScreen()),
                    child: Text(
                      LocaleKeys.SIGNUP_BUTTON.tr(),
                      style: headingStyle2(
                        context: context,
                        color: colorBlue,
                      ).copyWith(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
