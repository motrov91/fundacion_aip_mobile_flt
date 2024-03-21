import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget{
  const CustomAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;
    const textStyle = TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.normal);

    return AppBar(
      backgroundColor: colors.primary,
      title: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(image: AssetImage('assets/images/logo-aip.png'), width: 50,),
          SizedBox(width: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Fundación AIP', style: textStyle,),
              Text('Cloud Service', style: textStyle,),
            ],
          )
        ],
      ),
      actions: const [
        SizedBox(width: 30,)
      ],
    );
  }
  
  @override
  Size get preferredSize => const Size.fromHeight(60);
}