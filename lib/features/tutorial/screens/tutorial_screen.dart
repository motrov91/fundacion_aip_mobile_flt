import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:fundacion_aip_mobile/features/auth/auth.dart';
import 'package:go_router/go_router.dart';

class SlideInfo{
  final String title;
  final String subtitle;
  final String imageUrl;

  SlideInfo({required this.title, required this.subtitle, required this.imageUrl});
}

final slides = <SlideInfo>[
  SlideInfo(title: 'Gestiona encuestas de una forma mas fácil', subtitle: 'Consigue toda la información de los agricultores desde tu celular', imageUrl: 'assets/images/tutorialimg1.png'),
  SlideInfo(title: 'Olvidate de los formularios físicos', subtitle: 'Manten toda la información desde tu celular con acceso a tiempo completo', imageUrl: 'assets/images/tutorialimg2.png'),
  SlideInfo(title: 'Sincroniza tus datos', subtitle: 'Olvidate de estar pasando información desde los formularios, ahora puedes poner tu información en linea en segundos.', imageUrl: 'assets/images/tutorialimg3.png'),
];

class TutorialScreen extends StatefulWidget {

  static const String name = 'tutorial_screen';

  const TutorialScreen({super.key});

  @override
  State<TutorialScreen> createState() => _TutorialScreenState();
}

class _TutorialScreenState extends State<TutorialScreen> {

  late final pageViewController = PageController();
  bool endShow = false;

  @override
  void initState() {
    super.initState();

    pageViewController.addListener(() {
      final page = pageViewController.page ?? 0;
      if( !endShow && page >= ( slides.length - 1.5 ) ){
        setState(() {
          endShow = true;
        });
      }
    });
  }

  @override
  void dispose() {
    pageViewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2FFF2),
      body: Stack(
        children: [
          PageView(
            controller: pageViewController,
            physics: const BouncingScrollPhysics(),
            children: slides.map(
              (slideData) => _Slide(title: slideData.title, caption: slideData.subtitle, imageUrl: slideData.imageUrl),
            ).toList()
          ),

          Positioned(
            right: 15,
            top: 30,
            child: TextButton(
              child: const Text('Salir'),
              onPressed: () => context.pushReplacementNamed(LoginScreen.name),
            )
          ),

          endShow
            ? Positioned(
              bottom: 20,
              right: 30,
              child: FadeInRight(
                from: 15,
                delay: const Duration(milliseconds: 500),
                child: FilledButton(
                  onPressed: (){
                    context.pushReplacementNamed(LoginScreen.name);
                  },
                  child: const Text('Comenzar'),
                ),
              )
            )
            :const SizedBox()
        ],
      )
    );
  }
}

class _Slide extends StatelessWidget {

  final String title;
  final String caption;
  final String imageUrl;

  const _Slide({
    required this.title, required this.caption, required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {

    final textTheme = Theme.of(context).textTheme.titleLarge!.copyWith(
      color: Theme.of(context).colorScheme.primary
    );
    final subtitleTheme = Theme.of(context).textTheme.bodyMedium!.copyWith(
      color: Theme.of(context).colorScheme.secondary
    );

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FadeInDown(child: Image(image: AssetImage( imageUrl ))),
            const SizedBox(height: 20,),
            FadeInRight(child: Text( title, style: textTheme, )),
            const SizedBox(height: 10,),
            Text( caption, style: subtitleTheme, ),
          ],
        ),
      ),
    );
  }
}