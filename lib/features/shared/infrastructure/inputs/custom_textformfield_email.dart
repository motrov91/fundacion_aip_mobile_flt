import 'package:flutter/material.dart';

//* En este punto esta en statefull porque estamos cambiando el icono de vista de contraseña
// ignore: must_be_immutable
class CustomTextFormField extends StatefulWidget {

  final String? label;
  bool? isObscure;
  final String? errorText;
  final TextInputType? keyType;
  final bool? prefix;
  final bool? sufix;
  final IconData? iconInput;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;
  final String? initalValueData;
  final bool isValidator;
  final AutovalidateMode? autovalidateMode;

  CustomTextFormField({
    super.key, 
    this.label, 
    this.isObscure = false, 
    this.prefix = false, 
    this.iconInput, 
    this.onChanged, 
    this.validator, 
    this.errorText, 
    this.keyType = TextInputType.text,
    this.sufix = false, 
    this.initalValueData, 
    this.isValidator = false, 
    this.autovalidateMode = AutovalidateMode.always
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
      onChanged: widget.onChanged,
      validator: widget.validator,
      keyboardType: widget.keyType,
      initialValue: widget.initalValueData,
      obscureText: widget.isObscure ?? true,
      autovalidateMode: widget.autovalidateMode,
      decoration: InputDecoration(
        enabledBorder: border,
        focusedBorder: border.copyWith(  
          borderSide: BorderSide(
            color: colors.primary,
            width: 2
          )
        ),
        isDense: true,
        label: widget.label != null ? Text(widget.label!, maxLines: 1, overflow: TextOverflow.ellipsis) : null,
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