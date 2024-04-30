import 'package:isar/isar.dart';

import 'farm.dart';

part 'agricultural_registry.g.dart';

@collection
class AgriculturalRegistry {
  Id? isarIdAgricultural = Isar.autoIncrement;

  int? id_answerFormat;
  int? id_answerFormatProducer;
  int? farm_id;
  String? respuesta1;
  String? respuesta2;
  String? respuesta3;
  String? respuesta4;
  String? respuesta5;
  String? respuesta6;
  String? respuesta7;
  String? respuesta8;
  String? respuesta9;
  String? respuesta10;
  String? respuesta11;
  String? respuesta12;
  String? respuesta13;
  String? respuesta14;
  String? respuesta15;
  String? respuesta16;
  String? respuesta17;
  String? respuesta18;
  String? respuesta19;
  String? respuesta20;
  String? respuesta21;
  String? respuesta22;
  String? respuesta23;
  String? respuesta24;
  String? respuesta25;
  String? respuesta26;
  String? respuesta27;
  String? respuesta28;
  String? respuesta29;
  String? respuesta30;
  String? respuesta31;
  String? respuesta32;
  String? respuesta33;
  String? respuesta34;
  String? respuesta35;
  String? respuesta36;
  String? respuesta37;
  String? respuesta38;
  String? respuesta39;
  String? respuesta40;
  String? respuesta41;
  String? respuesta42;
  String? respuesta43;
  String? respuesta44;
  String? respuesta45;
  String? comments;
  String? comment1;
  String? comment2;
  String? comment3;
  String? comment4;
  String? comment5;
  String? comment6;
  String? comment7;
  String? comment8;
  String? comment9;
  String? comment10;
  String? comment11;
  String? comment12;
  String? comment13;
  String? comment14;
  String? comment15;
  String? comment16;
  String? comment17;
  String? comment18;
  String? comment19;
  String? comment20;
  String? comment21;
  String? comment22;
  String? comment23;
  String? comment24;
  String? comment25;
  String? comment26;
  String? comment27;
  String? comment28;
  String? comment29;
  String? comment30;
  String? comment31;
  String? comment32;
  String? comment33;
  String? comment34;
  String? comment35;
  String? comment36;
  String? comment37;
  String? comment38;
  String? comment39;
  String? comment40;
  String? comment41;
  String? comment42;
  String? comment43;
  String? comment44;
  String? comment45;
  int? userId;
  int? projectId;
  int? predio;

  //Conexion a la tabla Farm
  final farmFK = IsarLink<Farm>();

  AgriculturalRegistry({
    this.id_answerFormat,
      this.id_answerFormatProducer,
      this.farm_id,
      this.respuesta1,
      this.respuesta2,
      this.respuesta3,
      this.respuesta4,
      this.respuesta5,
      this.respuesta6,
      this.respuesta7,
      this.respuesta8,
      this.respuesta9,
      this.respuesta10,
      this.respuesta11,
      this.respuesta12,
      this.respuesta13,
      this.respuesta14,
      this.respuesta15,
      this.respuesta16,
      this.respuesta17,
      this.respuesta18,
      this.respuesta19,
      this.respuesta20,
      this.respuesta21,
      this.respuesta22,
      this.respuesta23,
      this.respuesta24,
      this.respuesta25,
      this.respuesta26,
      this.respuesta27,
      this.respuesta28,
      this.respuesta29,
      this.respuesta30,
      this.respuesta31,
      this.respuesta32,
      this.respuesta33,
      this.respuesta34,
      this.respuesta35,
      this.respuesta36,
      this.respuesta37,
      this.respuesta38,
      this.respuesta39,
      this.respuesta40,
      this.respuesta41,
      this.respuesta42,
      this.respuesta43,
      this.respuesta44,
      this.respuesta45,
      this.comments,
      this.comment1,
      this.comment2,
      this.comment3,
      this.comment4,
      this.comment5,
      this.comment6,
      this.comment7,
      this.comment8,
      this.comment9,
      this.comment10,
      this.comment11,
      this.comment12,
      this.comment13,
      this.comment14,
      this.comment15,
      this.comment16,
      this.comment17,
      this.comment18,
      this.comment19,
      this.comment20,
      this.comment21,
      this.comment22,
      this.comment23,
      this.comment24,
      this.comment25,
      this.comment26,
      this.comment27,
      this.comment28,
      this.comment29,
      this.comment30,
      this.comment31,
      this.comment32,
      this.comment33,
      this.comment34,
      this.comment35,
      this.comment36,
      this.comment37,
      this.comment38,
      this.comment39,
      this.comment40,
      this.comment41,
      this.comment42,
      this.comment43,
      this.comment44,
      this.comment45,
      this.userId,
      this.projectId,
      this.predio
  });
}
