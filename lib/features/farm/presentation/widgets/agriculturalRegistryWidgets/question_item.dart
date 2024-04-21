import 'package:flutter/material.dart';
import 'package:fundacion_aip_mobile/features/farm/presentation/providers/agricultural_registry_provider.dart';
import 'package:provider/provider.dart';

import '../../../Utils/questions_structure.dart';

class QuestionItem extends StatefulWidget {
  final List<QuestionsAgricultural> listQuestionsItems;
  final void Function(String?)? onChanged;
  final String? groupValue;
  final int index;

  const QuestionItem({
    super.key, 
    required this.listQuestionsItems, 
    this.onChanged, 
    this.groupValue, 
    required this.index
  });

  @override
  State<QuestionItem> createState() => _QuestionItemState();
}

class _QuestionItemState extends State<QuestionItem> {

  @override
  Widget build(BuildContext context) {

    final agriculturalProvider = Provider.of<AgriculturalRegistryProvider>(context);

    return Expanded(
      child: ListView.builder(
          itemCount: widget.listQuestionsItems.length,
          itemBuilder: (ctx, index) {
            final question = widget.listQuestionsItems[index];
            
            final selectedOptions = agriculturalProvider.selectedOptions['respuesta${index + widget.index}'];
            final selectedComment = agriculturalProvider.selectedOptions['comment${index + widget.index}'];
            
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          alignment: Alignment.topLeft,
                          width: 55,
                          child: Text(question.itemNumber!, style: const TextStyle(fontWeight: FontWeight.w500))),
                      SizedBox(width: 280, child: Text(question.title!, style: const TextStyle(fontWeight: FontWeight.w500),)),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(width: 55, child: Text(question.itemSubtitle!)),
                      const SizedBox(
                        width: 2,
                      ),
                      SizedBox(width: 270, child: Text(question.subtitle!)),
                    ],
                  ),
                  Column(
                    //Entires retorna un iterable de pares clave - valor en el mapa.
                    children: question.optionsQuestion!.entries.map((e) {
                      return RadioListTile(
                          visualDensity: const VisualDensity(
                              vertical: VisualDensity.minimumDensity),
                          contentPadding: const EdgeInsets.all(0),
                          title: Text(e.value, style: TextStyle(fontSize: 14, color: Colors.grey[600]),),
                          value: e.key,
                          groupValue: selectedOptions,
                          onChanged: (value) {
                            print('respuesta${index + widget.index}');
                            agriculturalProvider.setSelectedOption('respuesta${index + widget.index}', value);
                          });
                    }).toList(),
                  ),
                  TextFormField(
                    maxLines: 4,
                    maxLength: 110,
                    initialValue: selectedComment,
                    decoration: const InputDecoration(
                      hintText: "Observaciones",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      )
                    ),
                    onChanged: (value){
                      print('comment${index + widget.index}');
                      agriculturalProvider.setSelectedOption('comment${index + widget.index}', value);
                    },
                  )
                ],
              ),
            );
          }),
    );
  }
}
