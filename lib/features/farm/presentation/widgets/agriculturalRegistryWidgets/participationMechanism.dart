import 'package:flutter/material.dart';

import '../../../Utils/questions_structure.dart';
import 'question_item.dart';

class ParticipationMechanism extends StatelessWidget {
  const ParticipationMechanism({super.key});

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
              Text('DESARROLLO DE HABILIDADES PARA LA PARTICIPACIÓN', style: txtText.copyWith(fontSize: 10),)
            ],
          )
        ),
        QuestionItem(listQuestionsItems: QuestionsAgricultural.getDataParticipationsMechanism(), index: 42,)
      ],
    );
  }
}