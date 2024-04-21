import 'package:flutter/material.dart';

import '../../../Utils/questions_structure.dart';
import 'question_item.dart';

class InformationAccess extends StatelessWidget {
  const InformationAccess({super.key});

  @override
  Widget build(BuildContext context) {
    final txtText = Theme.of(context).textTheme.bodyLarge!.copyWith(
      fontWeight: FontWeight.w500,
      color: Theme.of(context).colorScheme.primary
    );

    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          child: Column(
            children: [
              Text('REGISTRO DEL PRODUCTOR AGRÍCOLA', style: txtText,),
              Text('ACCESO A LA INFORMACIÓN Y USO DE LAS TIC', style: txtText.copyWith(fontSize: 10),)
            ],
          )
        ),
        QuestionItem(listQuestionsItems: QuestionsAgricultural.getDataTICS(), index: 29,)
      ],
    );
  }
}
