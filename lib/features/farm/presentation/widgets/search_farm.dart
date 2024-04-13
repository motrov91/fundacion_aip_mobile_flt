import 'package:flutter/material.dart';

class SearchFarm extends StatelessWidget {
  const SearchFarm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme.primary;

    var outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(
        color: colors.withOpacity(0.4),
        width: 2
      )
    );

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(8),
      height: 60,
      child: Form(
        child: TextFormField(
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            filled: true,
            fillColor: colors.withOpacity(0.2),
            enabledBorder: outlineInputBorder,
            focusedBorder: outlineInputBorder,
            suffixIcon: IconButton(
              onPressed: (){},
              icon: Icon(Icons.search, color: colors,)
            ),
            isDense: true
          ),
        ),
      ),
    );
  }
}