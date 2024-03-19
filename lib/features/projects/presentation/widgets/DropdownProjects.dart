import 'package:flutter/material.dart';

class DropdownFormField extends StatefulWidget {

  const DropdownFormField({
    super.key,
  });

  @override
  State<DropdownFormField> createState() => _DropdownFormFieldState();
}

class _DropdownFormFieldState extends State<DropdownFormField> {
  List<DropdownMenuItem<String>> get dropdownItems{
    List<DropdownMenuItem<String>> menuItems = const[
      DropdownMenuItem(child: Text("USA"),value: "USA"),
      DropdownMenuItem(child: Text("Canada"),value: "Canada"),
      DropdownMenuItem(child: Text("Brazil"),value: "Brazil"),
      DropdownMenuItem(child: Text("England"),value: "England"),
    ];
    
    return menuItems;
  }

  @override
  Widget build(BuildContext context) {

    String selectedValue = "USA";

    return Padding(
      padding: const EdgeInsets.all(10),
      child: DropdownButtonFormField(
        decoration: const InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 1),
            borderRadius: BorderRadius.all(Radius.circular(10))
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(width: 1)
          )
        ),
        style: TextStyle( color: Theme.of(context).colorScheme.primary),
        value: selectedValue,
        items: dropdownItems, 
        onChanged: (value){
          setState(() {
            selectedValue = value!;
          });

          print(selectedValue);
        }
      ),
    );
  }
}