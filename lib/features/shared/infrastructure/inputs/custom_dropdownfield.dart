import 'package:flutter/material.dart';

class CustomDropdownField extends StatelessWidget {

  final List<DropdownMenuItem<String>> dropdownItems;  
  final String labelText;
  final void Function(String?)? onChanged;

  const CustomDropdownField({super.key, required this.dropdownItems, required this.labelText, this.onChanged});

  @override
  Widget build(BuildContext context) {

    String selectedValue = dropdownItems.isNotEmpty ? dropdownItems.first.value! : '';

    var outlineInputBorder = OutlineInputBorder(
      borderSide: const BorderSide( color: Colors.grey, width: 1),
      borderRadius: BorderRadius.circular(20)
    );

    return DropdownButtonFormField(
      itemHeight: kMinInteractiveDimension,
      decoration: InputDecoration(
        labelText: labelText,
        isDense: true,
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder
      ),
      style: TextStyle(color: Colors.grey[800]),
      value: selectedValue,
      items: dropdownItems, 
      onChanged: onChanged
    );
  }
}