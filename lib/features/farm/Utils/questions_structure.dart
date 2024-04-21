
class QuestionsAgricultural {
  String? itemNumber;
  String? title;
  String? itemSubtitle;
  String? subtitle;
  Map<String, String>? optionsQuestion;

  QuestionsAgricultural({
    this.itemNumber,
    this.title,
    this.itemSubtitle,
    this.subtitle,
    this.optionsQuestion
  });

  static List<QuestionsAgricultural> getDataQuestion() {
    return [
      QuestionsAgricultural(itemNumber: '1.1.1', title: 'Identificación de la actividad productiva actual', itemSubtitle: '1.1.1.1', subtitle: '¿Según su sistema productivo, con cual de las siguientes opciones se identifica?', optionsQuestion: {'A': 'Agronegocio', 'B': 'Predio productivo tradicional', 'C': 'Productor tradicional', 'D': 'Productor de subsistencia'},),
      QuestionsAgricultural(itemNumber: '1.1.2', title: 'Identifica las actividades productivas secundarias', itemSubtitle: '1.1.2.1', subtitle: '¿El productor presenta actividades productivas secundarias con que enfoque o proyección?', optionsQuestion: {'A':'Con enfoque de agronegocio', 'B':'Como complemento a la actividad productiva principal', 'C':'De forma temporal o no especializada', 'D':'No tiene identificada una linea productiva secundaria'}),
      QuestionsAgricultural(itemNumber: '1.1.3', title: 'Tipo de herramientas y equipos empleados en el proceso productivo', itemSubtitle: '1.1.3.1', subtitle: '¿Cómo es su acceeso a tipo de herramientas y equipos para ser empleados en su proceso productivo?', optionsQuestion: {'A':'Acceso ilimitado - especializado, según la actividad productiva y con componente tecnologico', 'B':'Acceso ilimitado a elementos comines del mercado.', 'C':'Acceso limitado', 'D':'Acceso restringido'}),
      QuestionsAgricultural(itemNumber: '1.1.3.2', title: '¿Cómo es su acceso a fuentes de energia?', itemSubtitle: '1.1.3.2', subtitle: '¿Cómo es su acceso a fuentes de energia?', optionsQuestion: {'A':'Acceso ilimitado a fuentes propias, tradicionales y alternativas', 'B':'Acceso ilimitado a fuentes tradicionales', 'C':'Acceso ilimitado', 'D':'Acceso restringido'}),
      QuestionsAgricultural(itemNumber: '1.1.4', title: 'Uso de buenas prácticas agrícolas', itemSubtitle: '1.1.4.1', subtitle: '¿Cuál es su estado actual con respecto a las BPA?', optionsQuestion: {'A':'Esta certificado en BPA con el ICA y/o con otras certificaciones de inocuidad', 'B':'Conoce y aplica las BPA, y esta en proceso de certificacion con el ICA.', 'C':'Conoce parcialmente las BPA, pero no las aplica.', 'D':'No cono ce las BPA.'}),
      QuestionsAgricultural(itemNumber: '1.1.4', title: '¿Cómo realiza el manejo de plagas y enfermedades (MIPE)?', itemSubtitle: '1.1.4.2', subtitle: '¿Cómo realizar el manejo de plagas y enfermedades (MIPE)?', optionsQuestion: {'A':'Planificado', 'B':'No planificado', 'C':'Conoce, pero no implementa.', 'D':'No conoce ni implementa'}),
      QuestionsAgricultural(itemNumber: '1.1.4', title: 'Uso de buenas practicas ganaderas', itemSubtitle: '1.1.4.3', subtitle: '¿Cual es su estado actual con respecto a las BPG?', optionsQuestion: {'A':'No conoce las BPG', 'B':'Conoce parcialmente las BPG, pero no las aplica.', 'C':'Conoce y aplica las BPG, y está en proceso de certificación con el ICA.', 'D':'Está certificado en BPG con el ICA y/o con otras certificaciones'}),
      QuestionsAgricultural(itemNumber: '1.1.4', title: 'Uso de buenas practicas ganaderas', itemSubtitle: '1.1.4.4', subtitle: '¿Con relación al manejo sanitario?', optionsQuestion: {'A':'No conoce ni implementa', 'B':'Conoce, pero no implementa.', 'C':'No planificado', 'D':'Planificado'}),
      QuestionsAgricultural(itemNumber: '1.1.4', title: 'Uso de buenas practicas ganaderas', itemSubtitle: '1.1.4.5', subtitle: '¿Cómo maneja el sistema de nutrución de su producción?', optionsQuestion: {'A':'No conoce ningun plan nutricional animal.', '':'Conoce el plan nutricional pero no aplica.', 'B':'Conoce el plan nutricional pero no siempre la aplica', 'C':'Implementa el plan nutricional animal.'}),
      QuestionsAgricultural(itemNumber: '1.1.4', title: 'Uso de buenas practicas ganaderas', itemSubtitle: '1.1.4.6', subtitle: '¿Implementa manejo genético y productivo en su predio?', optionsQuestion: {'A':'No conoce la selección y clasificación genética ni los métodos de biotecnología reproductiva', 'B':'Conoce pero no selecciona ni clasifica el material genético, ni implementa métodos de biotecnologías reproductivas.', 'C':'Conoce pero no siempre aplica la selección y clasificación del material genético, para la implementación de biotecnologías reproductivas.', 'D':'Selecciona y clasifica el material génetico a utilizar en biotecnologías reporductivas.'}),
      QuestionsAgricultural(itemNumber: '1.1.5', title: 'Esquemas de comercialización de los productos', itemSubtitle: '1.1.5.1', subtitle: '¿Cómo es la forma de comercialización del productor?', optionsQuestion: {'A':'Planificada especializada y/o bidireccional.', 'B':'Planificado tradicional.', 'C':'Tradicional.', 'D':'Autoconsumo'}),
      QuestionsAgricultural(itemNumber: '1.1.5', title: '¿Cómo es su esquema de comercialización?', itemSubtitle: '1.1.5.2', subtitle: '¿Cómo es su esquema de comercialización?', optionsQuestion: {'A':'No cuenta con esquema de comercialización.', 'B':'Tradicional', 'C':'Básico.', 'D':'Local'}),
      QuestionsAgricultural(itemNumber: '1.1.6', title: 'Mercados', itemSubtitle: '1.1.6.1', subtitle: '¿A qué tipo de mercado lleva su producto?', optionsQuestion: {'A':'Especializado.', 'B':'Tradicional.', 'C':'Básico.', 'D':'Local.'}),
      QuestionsAgricultural(itemNumber: '1.1.7', title: 'Valor agregado en los procesos de producción', itemSubtitle: '1.1.7.1', subtitle: '¿A qué nivel de valor agregado lleva su producto?', optionsQuestion: {'A':'Especializado, hasta producto transformado.', 'B':'Especializado, sin producto transformado.', 'C':'Básico, por demanda.', 'D':'Ninguno.'}),
      QuestionsAgricultural(itemNumber: '1.1.8', title: 'Registros', itemSubtitle: '1.1.8.1', subtitle: '¿Gestiona registros de su sistema productivo?', optionsQuestion: {'A':'Sistematizado.', 'B':'Manual.', 'C':'Básico.', 'D':'No lleva registro'}),
      QuestionsAgricultural(itemNumber: '1.1.8', title: 'Registros', itemSubtitle: '1.1.8.2', subtitle: '¿Qué nivel de conocimientos administrativos posee sobre su sistema de producción?', optionsQuestion: {'A':'Alto.', '':'Intermedio.', 'B':'Básico.','C':'Ninguno.'}),
      QuestionsAgricultural(itemNumber: '1.1.9', title: 'Tipo de mano de obra empleada', itemSubtitle: '1.1.9.1', subtitle: '¿Cómo es la vinculación de mano de obra?', optionsQuestion: {'A':'Formal, con estructura administrativa.', 'B':'Formal, sin estructura administrativa.', 'C':'Informal.', 'D':'Informal sin contrato.'}),
      QuestionsAgricultural(itemNumber: '1.1.9', title: 'Tipo de mano de obra empleada', itemSubtitle: '1.1.9.2', subtitle: '¿Hace capacitación, formación a la mano de obra?', optionsQuestion: {'A':'Permanentemente.', 'B':'Ocasionalmente.', 'C':'Según oferta – necesidades.', 'D':'No capacita.'}),
      QuestionsAgricultural(itemNumber: '1.1.10', title: 'Acceso a crédito y bancarización', itemSubtitle: '1.1.10.1', subtitle: '¿Tiene acceso a créditos?', optionsQuestion: {'A':'Formal, enfocado al crecimiento del negocio.', 'B':'Formal bancarizado.', 'C':'Formal, no bancarizado.', 'D':'Informal.'}),
      QuestionsAgricultural(itemNumber: '1.1.10', title: 'Acceso a crédito y bancarización', itemSubtitle: '1.1.10.2', subtitle: '¿Tiene acceso al sistema financiero formal, está bancarizado?', optionsQuestion: {'A':'Con Acceso vinculado al agronegocio.', 'B':'Con acceso no vinculado al agronegocio.', 'C':'Con acceso, pero no muestra interés.', 'D':'Sin acceso.'}),

    ];
  }

  static List<QuestionsAgricultural> getDataOrganization() {
    return [
      QuestionsAgricultural(itemNumber: '1.2.1', title: 'Vinculación a algún tipo de organización', itemSubtitle: '1.2.1.1', subtitle: '¿Está vinculado a algún tipo de organización?', optionsQuestion: {'A':'Sí', 'B':'No',}),
      QuestionsAgricultural(itemNumber: '1.2.1', title: 'Vinculación a algún tipo de organización', itemSubtitle: '1.2.1.2', subtitle: 'En caso de estar vinculado, ¿Cómo es la participación en la organización?', optionsQuestion: {'A':'Activo', 'B':'Sin participación.', 'C':'No formalizado.', 'D':'No le interesa participar.'}),
      QuestionsAgricultural(itemNumber: '1.2.2', title: 'Realización de actividades productivas de manera colectiva', itemSubtitle: '1.2.2.1', subtitle: '¿Participa en actividades productivas de manera colectiva?', optionsQuestion: {'A':'Activo.', 'B':'Frecuente.', 'C':'Eventual.', 'D':'Sin participación.'}),
      QuestionsAgricultural(itemNumber: '1.2.3', title: 'Procesos de emprendimiento y asociatividad', itemSubtitle: '1.2.3.1', subtitle: '¿Participa el productor en procesos de emprendimiento y asociatividad?', optionsQuestion: {'A':'Asociativa / organizado.', 'B':'Asociativa sin organización.', 'C':'Individual.', 'D':'Sin participación.'}),
      QuestionsAgricultural(itemNumber: '1.2.4', title: 'Participación en alianzas comerciales', itemSubtitle: '1.2.4.1', subtitle: '¿Participa en alianzas comerciales?', optionsQuestion: {'A':'Formal y continua.', 'B':'Formal y en forma esporádica.', 'C':'No Formal y en forma esporádica.', 'D':'No participa.'}),
      QuestionsAgricultural(itemNumber: '1.2.5', title: 'Acceso a apoyo técnico para el manejo de su sistema productivo', itemSubtitle: '1.2.5.1', subtitle: '¿Accede a apoyo técnico para el manejo de su sistema productivo?', optionsQuestion: {'A':'Permanente y especializada.', 'B':'Colectiva según necesidades comunes.', 'C':'Acceso sin cobertura adecuada a la necesidad.', 'D':'Sin acceso.'}),
      QuestionsAgricultural(itemNumber: '1.2.6', title: 'Uso de sellos de calidad y certificaciones', itemSubtitle: '1.2.6.1', subtitle: '¿Cuenta con sellos de calidad y certificaciones?', optionsQuestion: {'A':'Cuenta con certificación.', 'B':'Está en proceso.', 'C':'No le interesa.', 'D':'No conoce.'}),
      QuestionsAgricultural(itemNumber: '1.2.7', title: 'Conocimientos sobre propiedad intelectual', itemSubtitle: '1.2.7.1', subtitle: '¿Qué conocimientos sobre propiedad intelectual posee?', optionsQuestion: {'A':'Los tiene en cuenta.', 'B':'Los conoce.', 'C':'Conocimiento básico.', 'D':'Ningún conocimiento.'}),
    ];
  }

  static List<QuestionsAgricultural> getDataTICS() {
    return [
      QuestionsAgricultural(itemNumber: '1.3.1', title: 'Acceso a fuentes de información', itemSubtitle: '1.3.1.1', subtitle: '1.3.1.1	¿Qué acceso tiene a fuentes de información relacionadas con su sistema productivo?', optionsQuestion: {'A':'Todas las fuentes.','B':'Mayoría de fuentes.','C':'Algunas','D':'Pocas'}),
      QuestionsAgricultural(itemNumber: '1.3.2', title: 'Acceso a las TIC', itemSubtitle: '1.3.2.1', subtitle: '¿Qué acceso tiene a las TIC?', optionsQuestion: {'A':'Permanente.','B':'Frecuente.','C':'Regular.','D':'Ninguno.'}),
      QuestionsAgricultural(itemNumber: '1.3.3', title: 'Uso de las TIC como herramientas de toma de decisiones', itemSubtitle: '1.3.3.1', subtitle: '¿Qué tanto utiliza las TIC para toma de decisiones?', optionsQuestion: {'A':'Todas.','B':'Algunas.','C':'Ninguna.','D':'Sin Acceso.'}),
      QuestionsAgricultural(itemNumber: '1.3.4', title: 'Habilidades y competencias en el uso de TIC', itemSubtitle: '1.3.4.1', subtitle: 'Para el manejo del agronegocio, ¿qué habilidades y competencias tiene en el uso de las TIC?', optionsQuestion: {'A':'Alta.','B':'Media.','C':'Basica.','D':'Ninguno.'}),
      QuestionsAgricultural(itemNumber: '1.3.5', title: 'Apropiación social del conocimiento tradicional y científico', itemSubtitle: '1.3.5.1', subtitle: '¿Cómo es el nivel de apropiación social del conocimiento tradicional y científico?', optionsQuestion: {'A':'Superior','B':'Alto.','C':'Intermedio.'}),
    ];
  }

  static List<QuestionsAgricultural> getDataNaturalEnviroments() {
    return [
      QuestionsAgricultural(itemNumber: '1.4.1', title: 'Prácticas de manejo y conservación del medio ambiente y de la biodiversidad', itemSubtitle: '1.4.1.1', subtitle: '¿Conoce y planifica en su sistema productivo, actividades de conservación de la biodiversidad y el medio ambiente?', optionsQuestion: {'A':'Cuenta e implementa un plan de conservación.','B':'Implementa sin planificación','C':'Conoce, pero no implementa prácticas.','D':'No conoce, ni implementa.'}),
      QuestionsAgricultural(itemNumber: '1.4.2', title: 'Prácticas ambientales sostenibles y/o sustentables', itemSubtitle: '1.4.2.1', subtitle: '¿Conoce y planifica actividades de conservación del recurso hídrico en su sistema productivo?', optionsQuestion: {'A':'Dispone de un plan de conservación y lo implementa.','B':'Implementa sin planificación.','C':'Conoce, pero no implementa prácticas.','D':'No conoce, ni implementa.'}),
      QuestionsAgricultural(itemNumber: '1.4.2', title: 'Prácticas ambientales sostenibles y/o sustentables', itemSubtitle: '1.4.2.2', subtitle: '¿Cómo realiza el manejo de suelos y nutrición para fines productivos?', optionsQuestion: {'A':'Manejo planificado del suelo.','B':'Manejo intermedio no planificado.','C':'Manejo básico no planificado.','D':'Sin manejo.'}),
      QuestionsAgricultural(itemNumber: '1.4.3', title: 'Actividades de mitigación y adaptación al cambio climático', itemSubtitle: '1.4.3.1', subtitle: '¿Tiene conocimiento e implementa acciones de prevención y/o recuperación del medio ambiente enfocado en la mitigación y adaptación al cambio climático?', optionsQuestion: {'A':'Conoce y cuenta con un plan de mitigación y adaptación.','B':'Conoce e implementa.','C':'Conoce medidas, pero no las implementa.','D':'No conoce.'}),
      QuestionsAgricultural(itemNumber: '1.4.3.2', title: '¿Conoce y planifica la producción agropecuaria en su predio teniendo en cuenta la información climática histórica y de pronósticos climáticos?', itemSubtitle: '1.4.3.2', subtitle: '¿Conoce y planifica la producción agropecuaria en su predio teniendo en cuenta la información climática histórica y de pronósticos climáticos?', optionsQuestion: {'A':'Planificación avanzada.','B':'Conoce y planifica.','C':'Conoce, pero no planifica.','D':'No conoce.'}),
      QuestionsAgricultural(itemNumber: '1.4.3.3', title: '¿El productor conoce e implementa acciones que contribuyan a disminuir el calentamiento global?', itemSubtitle: '1.4.3.3', subtitle: '¿El productor conoce e implementa acciones que contribuyan a disminuir el calentamiento global?', optionsQuestion: {'A':'Conoce e implementa acciones.','B':'Conoce, pero no implementa acciones.','C':'No conoce, pero sus acciones no afectan.','D':'No conoce, pero sus acciones si afectan.'}),
      QuestionsAgricultural(itemNumber: '1.4.4', title: 'Cumplimiento de la Normatividad ambiental', itemSubtitle: '1.4.4.1', subtitle: '¿Conoce la normatividad ambiental?', optionsQuestion: {'A':'Si.','B':'No.'}),
      QuestionsAgricultural(itemNumber: '1.4.4.2', title: '¿Cumple la normatividad ambiental?', itemSubtitle: '1.4.4.2', subtitle: '¿Cumple la normatividad ambiental?', optionsQuestion: {'A':'Certificado.','B':'En proceso de certificación.','C':'Conoce y aplica normatividad nacional.','D':'No cumple.'}),
    ];
  }

  static List<QuestionsAgricultural> getDataParticipationsMechanism() {
    return [
      QuestionsAgricultural(itemNumber: '1.5.1', title: 'Conocimiento sobre instancias y mecanismos de participación', itemSubtitle: '1.5.1.1', subtitle: '¿Tiene Conocimiento sobre instancias y mecanismos de participación?', optionsQuestion: {'A':'Conoce y participa activamente.','B':'Conoce al menos cinco (5) mecanismos de participación.','C':'Conoce al menos tres (3) mecanismos de participación.','D':'No tiene conocimientos'}),
      QuestionsAgricultural(itemNumber: '1.5.2', title: 'Conocimiento sobre herramientas para la participación', itemSubtitle: '1.5.2.1', subtitle: '¿Tiene Conocimiento sobre herramientas para la participación?', optionsQuestion: {'A':'Conoce todas las herramientas.','B':'Al menos tres (3) herramientas','C':'Al menos una (1) herramienta.','D':'No tiene conocimientos'}),
      QuestionsAgricultural(itemNumber: '1.5.3', title: 'Ejercicio de control político y social', itemSubtitle: '1.5.3.1', subtitle: '¿Conoce los mecanismos de control político y social? Y ¿ha participado en los mismos?', optionsQuestion: {'A':'Todos los mecanismos.','B':'Al menos un (1) mecanismo y sí ha participado.','C':'Al menos un (1) mecanismo y no ha participado.','D':'No tiene conocimientos'}),
      QuestionsAgricultural(itemNumber: '1.5.4', title: 'Fomento de la autogestión de las comunidades', itemSubtitle: '1.5.4.1', subtitle: '¿Cuál ha sido el rol del productor en la autogestión de las comunidades?', optionsQuestion: {'A':'Líder comunitario.','B':'Gestión Colectiva.','C':'Gestión Individual.','D':'No ha gestionado.'}),
    ];
  }
}