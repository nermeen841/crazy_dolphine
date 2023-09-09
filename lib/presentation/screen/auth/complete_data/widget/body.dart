import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:padle_me/core/constants/colors.dart';
import 'package:padle_me/core/constants/constants.dart';
import 'package:padle_me/core/constants/text_theme.dart';
import 'package:padle_me/core/helper/validation.dart';
import 'package:padle_me/core/widgets/custom_buttons_widget.dart';
import 'package:padle_me/core/widgets/custom_text_field.dart';
import 'package:padle_me/core/widgets/space_widget.dart';
import 'package:padle_me/generator/locale_keys.dart';
import 'package:padle_me/presentation/widget/auth_welcome_message.dart';
import 'package:padle_me/presentation/widget/body_container.dart';
import 'package:easy_localization/easy_localization.dart';

class CompleteDataBody extends StatefulWidget {
  const CompleteDataBody({super.key});

  @override
  State<CompleteDataBody> createState() => _CompleteDataBodyState();
}

class _CompleteDataBodyState extends State<CompleteDataBody> {
  final formKey = GlobalKey<FormState>();
  TextEditingController diveNum = TextEditingController();
  TextEditingController date = TextEditingController();
  TextEditingController dipth = TextEditingController();
  TextEditingController bottomTime = TextEditingController();
  TextEditingController location = TextEditingController();
  TextEditingController suitThikness = TextEditingController();
  TextEditingController timeIn = TextEditingController();
  TextEditingController timeOut = TextEditingController();
  TextEditingController airIn = TextEditingController();
  TextEditingController airOut = TextEditingController();
  TextEditingController visibilty = TextEditingController();
  TextEditingController surfaceTemp = TextEditingController();
  TextEditingController airTemp = TextEditingController();
  TextEditingController bottomTemp = TextEditingController();
  TextEditingController weight = TextEditingController();
  TextEditingController notes = TextEditingController();

  FocusNode diveNumFocus = FocusNode();
  FocusNode dipthFocus = FocusNode();
  FocusNode bottomTimeFocus = FocusNode();
  FocusNode dateFocus = FocusNode();
  FocusNode locationFocus = FocusNode();
  List<String> options = [
    "Skins",
    "Dry Suit",
    "Hood",
    "Gloves",
    "Boots",
    "Other",
  ];
  List<String> conditionOptions = [
    "Boat",
    "Shore",
    "Fresh",
    "Salt",
  ];
  int? selectedOption;
  int? selectedOption2;
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
              const AuthWelcomMessage(
                title: "Diving form",
                subtitle: "Fill in diving form to continue !",
              ),
              const VerticalSpace(value: 3),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: screenWidth(context) * 0.44,
                    child: CustomTextFormField(
                      borderColor: Colors.transparent,
                      hint: "Dive number",
                      controller: diveNum,
                      focusNode: diveNumFocus,
                      inputType: TextInputType.number,
                      prefix: Icon(
                        CupertinoIcons.number,
                        color: greyIcon.withOpacity(0.4),
                      ),
                      validator: (value) => validate(value!),
                      onEditingComplete: () {
                        diveNumFocus.unfocus();
                        FocusScope.of(context).requestFocus(dateFocus);
                      },
                    ),
                  ),
                  SizedBox(
                    width: screenWidth(context) * 0.44,
                    child: CustomTextFormField(
                      borderColor: Colors.transparent,
                      hint: "Date",
                      controller: date,
                      focusNode: dateFocus,
                      inputType: TextInputType.datetime,
                      readOnly: true,
                      ontap: () {},
                      prefix: Icon(
                        CupertinoIcons.calendar,
                        color: greyIcon.withOpacity(0.4),
                      ),
                      validator: (value) => validate(value!),
                      onEditingComplete: () {
                        dateFocus.unfocus();
                        FocusScope.of(context).requestFocus(locationFocus);
                      },
                    ),
                  ),
                ],
              ),
              const VerticalSpace(value: 2),
              CustomTextFormField(
                borderColor: Colors.transparent,
                hint: "Location",
                inputType: TextInputType.streetAddress,
                controller: location,
                focusNode: locationFocus,
                prefix: Icon(
                  CupertinoIcons.pin,
                  color: greyIcon.withOpacity(0.4),
                ),
                validator: (value) => validate(value!),
                onEditingComplete: () {
                  locationFocus.unfocus();
                  FocusScope.of(context).requestFocus(dipthFocus);
                },
              ),
              const VerticalSpace(value: 2),
              Text(
                "Dive planning",
                style: headingStyle3(
                  context: context,
                  color: textcolor,
                ),
              ),
              const VerticalSpace(value: 2),
              CustomTextFormField(
                borderColor: Colors.transparent,
                hint: "Depth",
                inputType: TextInputType.number,
                controller: dipth,
                focusNode: dipthFocus,
                prefix: Icon(
                  Icons.waves_outlined,
                  color: greyIcon.withOpacity(0.4),
                ),
                validator: (value) => validate(value!),
                onEditingComplete: () {
                  dipthFocus.unfocus();
                  FocusScope.of(context).requestFocus(bottomTimeFocus);
                },
              ),
              const VerticalSpace(value: 2),
              CustomTextFormField(
                borderColor: Colors.transparent,
                hint: "Bottom Time   EX: (1:50)",
                inputType: TextInputType.text,
                controller: bottomTime,
                focusNode: bottomTimeFocus,
                prefix: Icon(
                  Icons.alarm_outlined,
                  color: greyIcon.withOpacity(0.4),
                ),
                validator: (value) => validate(value!),
                onEditingComplete: () {
                  bottomTimeFocus.unfocus();
                },
              ),
              const VerticalSpace(value: 2),
              Text(
                "Exposure protection",
                style: headingStyle3(
                  context: context,
                  color: textcolor,
                ),
              ),
              const VerticalSpace(value: 2),
              CustomTextFormField(
                borderColor: Colors.transparent,
                hint: "suit thickness",
                inputType: TextInputType.number,
                controller: suitThikness,
                validator: (value) => validate(value!),
                suffix: SizedBox(
                  width: screenWidth(context) * 0.4,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Radio(
                            value: 0,
                            groupValue: 1,
                            onChanged: (val) {},
                            activeColor: kMainColor,
                          ),
                          Text(
                            "inch",
                            style: bodyStryle(
                              context: context,
                              color: textGrey2,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                            value: 0,
                            groupValue: 1,
                            onChanged: (val) {},
                            activeColor: kMainColor,
                          ),
                          Text(
                            "mm",
                            style: bodyStryle(
                              context: context,
                              color: textGrey2,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const VerticalSpace(value: 2),
              GridView.count(
                crossAxisCount: 3,
                primary: false,
                shrinkWrap: true,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 2.5,
                children: List.generate(
                  options.length,
                  (index) => Row(
                    children: [
                      Radio(
                        value: index,
                        groupValue: selectedOption2,
                        onChanged: (val) {
                          setState(() {
                            selectedOption2 = val;
                          });
                        },
                        activeColor: kMainColor,
                      ),
                      Text(
                        options[index],
                        style: bodyStryle(
                          context: context,
                          color: textcolor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const VerticalSpace(value: 2),
              Text(
                "Suit Style",
                style: headingStyle3(context: context, color: textcolor),
              ),
              const VerticalSpace(value: 2),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Radio(
                        value: 0,
                        groupValue: 1,
                        onChanged: (val) {},
                        activeColor: kMainColor,
                      ),
                      Text(
                        "full",
                        style: bodyStryle(
                          context: context,
                          color: textGrey2,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                        value: 0,
                        groupValue: 1,
                        onChanged: (val) {},
                        activeColor: kMainColor,
                      ),
                      Text(
                        "short",
                        style: bodyStryle(
                          context: context,
                          color: textGrey2,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const VerticalSpace(value: 2),
              CustomTextFormField(
                borderColor: Colors.transparent,
                hint: "Weight",
                inputType: TextInputType.number,
                controller: weight,
                validator: (value) => validate(value!),
                suffix: SizedBox(
                  width: screenWidth(context) * 0.4,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Radio(
                            value: 0,
                            groupValue: 1,
                            onChanged: (val) {},
                            activeColor: kMainColor,
                          ),
                          Text(
                            "ibs",
                            style: bodyStryle(
                              context: context,
                              color: textGrey2,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                            value: 0,
                            groupValue: 1,
                            onChanged: (val) {},
                            activeColor: kMainColor,
                          ),
                          Text(
                            "kg",
                            style: bodyStryle(
                              context: context,
                              color: textGrey2,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const VerticalSpace(value: 2),
              Text(
                "Total used",
                style: headingStyle3(
                  context: context,
                  color: textcolor,
                ),
              ),
              const VerticalSpace(value: 2),
              CustomTextFormField(
                borderColor: Colors.transparent,
                hint: "Time in",
                inputType: TextInputType.number,
                controller: timeIn,
                validator: (value) => validate(value!),
              ),
              const VerticalSpace(value: 2),
              CustomTextFormField(
                borderColor: Colors.transparent,
                hint: "Air in",
                inputType: TextInputType.number,
                controller: airIn,
                validator: (value) => validate(value!),
                suffix: SizedBox(
                  width: screenWidth(context) * 0.4,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Radio(
                            value: 0,
                            groupValue: 1,
                            onChanged: (val) {},
                            activeColor: kMainColor,
                          ),
                          Text(
                            "psi",
                            style: bodyStryle(
                              context: context,
                              color: textGrey2,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                            value: 0,
                            groupValue: 1,
                            onChanged: (val) {},
                            activeColor: kMainColor,
                          ),
                          Text(
                            "par",
                            style: bodyStryle(
                              context: context,
                              color: textGrey2,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const VerticalSpace(value: 2),
              Text(
                "Computer yes / no",
                style: headingStyle3(
                  context: context,
                  color: textcolor,
                ),
              ),
              const VerticalSpace(value: 2),
              CustomTextFormField(
                borderColor: Colors.transparent,
                hint: "Time out",
                inputType: TextInputType.number,
                controller: timeOut,
                validator: (value) => validate(value!),
              ),
              const VerticalSpace(value: 2),
              CustomTextFormField(
                borderColor: Colors.transparent,
                hint: "Air out",
                inputType: TextInputType.number,
                controller: airOut,
                validator: (value) => validate(value!),
                suffix: SizedBox(
                  width: screenWidth(context) * 0.4,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Radio(
                            value: 0,
                            groupValue: 1,
                            onChanged: (val) {},
                            activeColor: kMainColor,
                          ),
                          Text(
                            "psi",
                            style: bodyStryle(
                              context: context,
                              color: textGrey2,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                            value: 0,
                            groupValue: 1,
                            onChanged: (val) {},
                            activeColor: kMainColor,
                          ),
                          Text(
                            "par",
                            style: bodyStryle(
                              context: context,
                              color: textGrey2,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const VerticalSpace(value: 2),
              Text(
                "Conditions",
                style: headingStyle3(
                  context: context,
                  color: textcolor,
                ),
              ),
              const VerticalSpace(value: 2),
              CustomTextFormField(
                borderColor: Colors.transparent,
                hint: "visiblity",
                inputType: TextInputType.number,
                controller: visibilty,
                validator: (value) => validate(value!),
                suffix: SizedBox(
                  width: screenWidth(context) * 0.4,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Radio(
                            value: 0,
                            groupValue: 1,
                            onChanged: (val) {},
                            activeColor: kMainColor,
                          ),
                          Text(
                            "m.",
                            style: bodyStryle(
                              context: context,
                              color: textGrey2,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                            value: 0,
                            groupValue: 1,
                            onChanged: (val) {},
                            activeColor: kMainColor,
                          ),
                          Text(
                            "fi.",
                            style: bodyStryle(
                              context: context,
                              color: textGrey2,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const VerticalSpace(value: 2),
              CustomTextFormField(
                borderColor: Colors.transparent,
                hint: "Surface Temp",
                inputType: TextInputType.number,
                controller: surfaceTemp,
                validator: (value) => validate(value!),
                suffix: SizedBox(
                  width: screenWidth(context) * 0.4,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Radio(
                            value: 0,
                            groupValue: 1,
                            onChanged: (val) {},
                            activeColor: kMainColor,
                          ),
                          Text(
                            "m.",
                            style: bodyStryle(
                              context: context,
                              color: textGrey2,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                            value: 0,
                            groupValue: 1,
                            onChanged: (val) {},
                            activeColor: kMainColor,
                          ),
                          Text(
                            "f.",
                            style: bodyStryle(
                              context: context,
                              color: textGrey2,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const VerticalSpace(value: 2),
              CustomTextFormField(
                borderColor: Colors.transparent,
                hint: "Air Temp",
                inputType: TextInputType.number,
                controller: airTemp,
                validator: (value) => validate(value!),
                suffix: SizedBox(
                  width: screenWidth(context) * 0.4,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Radio(
                            value: 0,
                            groupValue: 1,
                            onChanged: (val) {},
                            activeColor: kMainColor,
                          ),
                          Text(
                            "c.",
                            style: bodyStryle(
                              context: context,
                              color: textGrey2,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                            value: 0,
                            groupValue: 1,
                            onChanged: (val) {},
                            activeColor: kMainColor,
                          ),
                          Text(
                            "f.",
                            style: bodyStryle(
                              context: context,
                              color: textGrey2,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const VerticalSpace(value: 2),
              CustomTextFormField(
                borderColor: Colors.transparent,
                hint: "Bottom Temp",
                inputType: TextInputType.number,
                controller: bottomTemp,
                validator: (value) => validate(value!),
                suffix: SizedBox(
                  width: screenWidth(context) * 0.4,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Radio(
                            value: 0,
                            groupValue: 1,
                            onChanged: (val) {},
                            activeColor: kMainColor,
                          ),
                          Text(
                            "c.",
                            style: bodyStryle(
                              context: context,
                              color: textGrey2,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Radio(
                            value: 0,
                            groupValue: 1,
                            onChanged: (val) {},
                            activeColor: kMainColor,
                          ),
                          Text(
                            "f.",
                            style: bodyStryle(
                              context: context,
                              color: textGrey2,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const VerticalSpace(value: 2),
              Row(
                children: List.generate(
                  conditionOptions.length,
                  (index) => Row(
                    children: [
                      Radio(
                        value: index,
                        groupValue: selectedOption,
                        onChanged: (val) {
                          setState(() {
                            selectedOption = val;
                          });
                        },
                        activeColor: kMainColor,
                      ),
                      Text(
                        conditionOptions[index],
                        style: bodyStryle(
                          context: context,
                          color: textcolor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const VerticalSpace(value: 4),
              CustomGeneralButton(
                text: LocaleKeys.FINISH.tr(),
                textColor: Colors.white,
                color: buttonColor,
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    // () => MagicRouter.navigateAndPopAll(const LayoutScreen());
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
