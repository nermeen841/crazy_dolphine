// ignore_for_file: library_private_types_in_public_api
import 'package:flutter/material.dart';
import 'package:padle_me/core/constants/text_theme.dart';
import 'package:padle_me/core/widgets/space_widget.dart';
import '../constants/colors.dart';

class CustomGeneralDropDown extends StatefulWidget {
  const CustomGeneralDropDown(
      {Key? key,
      this.items,
      this.text = '',
      this.fillColor = Colors.white,
      this.onSave,
      this.borderColor,
      this.validator,
      this.iconData})
      : super(key: key);
  final List<String>? items;
  final String text;
  final Color? fillColor;
  final Color? borderColor;
  final IconData? iconData;
  final Function(String?)? onSave;
  final String? Function(String?)? validator;

  @override
  _CustomGeneralDropDownState createState() => _CustomGeneralDropDownState();
}

class _CustomGeneralDropDownState extends State<CustomGeneralDropDown> {
  String? _chosenValue;

  // List<String>? categories = widget.items;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: widget.borderColor ?? Colors.transparent),
        color: widget.fillColor ?? textFormFieldColor,
      ),
      padding: const EdgeInsets.only(left: 5, right: 5),
      child: DropdownButtonFormField(
        icon: Icon(
          Icons.keyboard_arrow_down,
          color: greyIcon,
          size: 30,
        ),
        iconEnabledColor: const Color.fromRGBO(148, 148, 148, 1),
        decoration: const InputDecoration(
          border: InputBorder.none,
        ),
        value: _chosenValue,
        items: widget.items?.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem(
            value: value,
            child: Text(
              value,
              style: bodyStryle(color: textGrey2, context: context),
            ),
          );
        }).toList(),
        hint: Row(
          children: [
            (widget.iconData != null)
                ? Icon(
                    widget.iconData,
                    color: greyIcon,
                  )
                : const SizedBox(),
            (widget.iconData != null)
                ? const HorizontalSpace(value: 0.7)
                : const SizedBox(),
            Text(
              widget.text,
              style: bodyStryle(color: textGrey2, context: context),
            ),
          ],
        ),
        onChanged: (String? value) {
          setState(() {
            _chosenValue = value;
          });
          _chosenValue = value;
        },
        onSaved: widget.onSave,
        validator: widget.validator,
      ),
    );
  }
}
