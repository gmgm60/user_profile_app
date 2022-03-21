import 'package:flutter/material.dart';

class IsPass {
  bool isPassword = false;

  IsPass();
}

class CustomFormField extends StatefulWidget {
  final TextInputType textType;
  final bool showSuffix;
  final IconData? prefix;
  final String textLabel;
  final TextEditingController? controller;

  // bool isPassword;
  final IsPass isPass = IsPass();
  final String? Function(String?)? validation;
  final Function(String? str)? onChanged;
  final Function(String? str)? onSaved;
  final double horizontalPadding;
  final double radius;
  final int? maxLines;
  final int? minLines;
  final String initValue;

  CustomFormField({
    Key? key,
    required this.textLabel,
    this.showSuffix = false,
    this.prefix,
    this.controller,
    bool isPassword = false,
    required this.textType,
    required this.validation,
    this.onChanged,
    this.horizontalPadding = 25.0,
    this.radius = 10,
    this.maxLines,
    this.minLines,
    this.initValue = "", this.onSaved,
  }) : super(key: key) {
    isPass.isPassword = isPassword;
  }

  @override
  State<CustomFormField> createState() => _CustomFormFieldState();
}


class _CustomFormFieldState extends State<CustomFormField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(
            horizontal: widget.horizontalPadding, vertical: 10.0),
        child: TextFormField(
          onSaved: widget.onSaved,
          initialValue: widget.initValue,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          keyboardType: widget.textType,
          controller: widget.controller,
          obscureText: widget.isPass.isPassword,
          validator: widget.validation,
          onChanged: widget.onChanged,
          textInputAction: TextInputAction.done,
          decoration: InputDecoration(
            contentPadding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            labelText: widget.textLabel,
            alignLabelWithHint: true,
            prefixIcon: widget.prefix != null
                ? Icon(widget.prefix, color: Colors.blue)
                : null,
            suffixIcon: widget.showSuffix
                ? IconButton(
                onPressed: () {
                  widget.isPass.isPassword = !widget.isPass.isPassword;
                  setState(() {});
                },
                icon: Icon(widget.isPass.isPassword
                    ? Icons.visibility
                    : Icons.visibility_off))
                : null,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(widget.radius)),
            ),
          ),
          maxLines: widget.maxLines ?? 1,
          minLines: widget.minLines ?? 1,
        ));
  }
}