import 'package:flutter/material.dart';

import '../../domain/entities/farm.dart';

class ItemList extends StatelessWidget {
  final Farm item;

  const ItemList({required this.item});

  final style = const TextStyle(color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme.primary;

    return Container(
      margin: const EdgeInsets.only(bottom: 10, left: 10, right: 10, top: 10),
      width: double.infinity,
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3))
        ],
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                child: Text(
                  '${item.firstName} ${item.firstSurname}',
                  style: const TextStyle(fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                  margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Text(
                    item.nitProducer ?? 'Cedula del productor',
                    style: style,
                  )),
              const Spacer(),
              //* Location farm
              _LocationFarm(style: style, item: item,)
            ],
          ),
          const Spacer(),
          SizedBox(
            width: 50,
            child: item.isModified == null 
                ? Container()
                : item.isModified == true 
                ? IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.file_upload,
                      color: colors,
                    ))
                : Icon(
                    Icons.cloud_done_outlined,
                    size: 22,
                    color: Colors.amber.shade700,
                  ),
          )
        ],
      ),
    );
  }
}

class _LocationFarm extends StatelessWidget {

  final Farm item;

  const _LocationFarm({
    super.key,
    required this.style, required this.item,
  });

  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            margin: const EdgeInsets.fromLTRB(10, 0, 0, 6),
            child: Icon(
              Icons.location_on_outlined,
              color: Theme.of(context).colorScheme.primary,
              size: 18,
            )),
        Container(
            margin: const EdgeInsets.fromLTRB(5, 0, 0, 6),
            child: Text(
              item.vereda ?? '',
              style: style,
            )),

        Container(
            margin: const EdgeInsets.fromLTRB(5, 0, 0, 6),
            child: Text(
              item.municipality ?? '',
              style: style,
            ))
      ],
    );
  }
}
