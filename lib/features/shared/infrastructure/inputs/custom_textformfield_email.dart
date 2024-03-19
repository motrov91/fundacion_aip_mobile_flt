import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {

  final String? label;
  bool? isObscure;
  final String? errorText;
  final bool? prefix;
  final bool? sufix;
  final IconData? iconInput;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;

  CustomTextFormField({
    super.key, 
    this.label, 
    this.isObscure = false, 
    this.prefix = false, 
    this.iconInput, 
    this.onChanged, 
    this.validator, 
    this.errorText, 
    this.sufix = false
  });

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    final border = OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.grey, width: 1),
      borderRadius: BorderRadius.circular(20),
    );

    return TextFormField(
      onChanged: (value){},
      obscureText: widget.isObscure ?? true,
      decoration: InputDecoration(
        enabledBorder: border,
        focusedBorder: border.copyWith(
          borderSide: BorderSide(
            color: colors.primary,
            width: 2
          )
        ),
        isDense: true,
        label: widget.label != null ? Text(widget.label!) : null,
        prefixIcon: widget.iconInput != null ? Icon(widget.iconInput) : null,
        prefixIconColor: colors.primary,
        errorText: widget.errorText ?? widget.errorText,
        errorBorder: border.copyWith(
          borderSide: BorderSide(color: Colors.red.shade800)
        ),
        focusedErrorBorder: border.copyWith(
          borderSide: BorderSide(color: Colors.red.shade800)
        ),
        suffixIcon: widget.sufix == true 
          ? IconButton(
            onPressed: (){
              setState(() {
                widget.isObscure = !widget.isObscure!;
              });
            },
            icon: widget.isObscure == true
              ? const Icon(Icons.visibility, color: Colors.grey,)
              : Icon(Icons.remove_red_eye, color: colors.primary,)
          )
          : null
      ),
    );
  }
}