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
import 'package:padle_me/presentation/screen/auth/complete_data/complete_data.dart';
import 'package:padle_me/presentation/screen/auth/login/login.dart';
import 'package:padle_me/presentation/widget/auth_welcome_message.dart';
import 'package:padle_me/presentation/widget/body_container.dart';
import 'package:easy_localization/easy_localization.dart';

class RegisterBody extends StatefulWidget {
  const RegisterBody({super.key});

  @override
  State<RegisterBody> createState() => _RegisterBodyState();
}

class _RegisterBodyState extends State<RegisterBody> {
  final formKey = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();
  bool showPassword = true;
  bool showPassword2 = true;
  FocusNode emailFocus = FocusNode();
  FocusNode nameFocus = FocusNode();
  FocusNode phoneFocus = FocusNode();
  FocusNode passwordFocus = FocusNode();
  FocusNode confirmpasswordFocus = FocusNode();

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
                title: LocaleKeys.GET_START.tr(),
                subtitle: LocaleKeys.CREATE_ACCOUNT.tr(),
              ),
              const VerticalSpace(value: 3),
              CustomTextFormField(
                borderColor: Colors.transparent,
                hint: "Full name",
                controller: name,
                focusNode: nameFocus,
                inputType: TextInputType.name,
                prefix: Icon(
                  CupertinoIcons.person,
                  color: greyIcon.withOpacity(0.4),
                ),
                validator: (value) => validateName(value!),
                onEditingComplete: () {
                  nameFocus.unfocus();
                  FocusScope.of(context).requestFocus(emailFocus);
                },
              ),
              const VerticalSpace(value: 2),
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
                  FocusScope.of(context).requestFocus(phoneFocus);
                },
              ),
              const VerticalSpace(value: 2),
              CustomTextFormField(
                borderColor: Colors.transparent,
                hint: "Mobile number",
                controller: phone,
                focusNode: phoneFocus,
                inputType: TextInputType.phone,
                prefix: Icon(
                  CupertinoIcons.phone,
                  color: greyIcon.withOpacity(0.4),
                ),
                validator: (value) => validate(value!),
                onEditingComplete: () {
                  phoneFocus.unfocus();
                  FocusScope.of(context).requestFocus(passwordFocus);
                },
              ),
              const VerticalSpace(value: 2),
              CustomTextFormField(
                borderColor: Colors.transparent,
                hint: "Password",
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
                  FocusScope.of(context).requestFocus(confirmpasswordFocus);
                },
              ),
              const VerticalSpace(value: 2),
              CustomTextFormField(
                borderColor: Colors.transparent,
                hint: "Confirm Password",
                inputType: TextInputType.text,
                controller: confirmpassword,
                focusNode: confirmpasswordFocus,
                isPassword: showPassword2,
                suffix: InkWell(
                  onTap: () => setState(() {
                    showPassword2 = !showPassword2;
                  }),
                  child: Icon(
                    (showPassword2)
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined,
                    color: greyIcon.withOpacity(0.4),
                  ),
                ),
                prefix: Icon(
                  Icons.lock_outline,
                  color: greyIcon.withOpacity(0.4),
                ),
                validator: (value) =>
                    validateConfirmPassword(value!, password.text),
                onEditingComplete: () {
                  confirmpasswordFocus.unfocus();
                },
              ),
              const VerticalSpace(value: 4),
              CustomGeneralButton(
                text: LocaleKeys.SIGN_UP.tr(),
                textColor: Colors.white,
                color: buttonColor,
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    MagicRouter.navigateTo(const CompleteDataScreen());
                  }
                },
              ),
              const VerticalSpace(value: 3),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    LocaleKeys.HAVE_ACCOUNT.tr(),
                    style: bodyStryle(
                      context: context,
                      color: kMainColor,
                    ),
                  ),
                  TextButton(
                    onPressed: () => MagicRouter.navigateAndPReplacement(
                      const LoginScreen(),
                    ),
                    child: Text(
                      LocaleKeys.SIGN_IN.tr(),
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
