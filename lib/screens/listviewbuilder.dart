import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class ListviewBuilderScreen extends StatefulWidget {
  const ListviewBuilderScreen({Key? key}) : super(key: key);

  @override
  State<ListviewBuilderScreen> createState() => _ListviewBuilderScreenState();
}

class _ListviewBuilderScreenState extends State<ListviewBuilderScreen> {
  Future<void> onRefresh() async {
    await Future.delayed(const Duration(seconds: 2));
    final lastId = imagesIds.last;
    imagesIds.clear();
    imagesIds.add(lastId + 1);
    add5();
  }

  final List<int> imagesIds = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  final ScrollController scrollController = ScrollController();
  bool isLoading = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    scrollController.addListener(() {
      if (scrollController.position.pixels + 500 >=
          scrollController.position.maxScrollExtent) {
        // add5();
        fetchData();
      }
    });
  }

  void add5() {
    final lastId = imagesIds.last;
    imagesIds.addAll([1, 2, 3, 4, 5].map((e) => lastId + e));
    setState(() {});
  }

  Future fetchData() async {
    if (isLoading) return;
    isLoading = true;
    setState(() {});
    await Future.delayed(const Duration(seconds: 3));
    add5();
    isLoading = false;
    setState(() {});

    //esta es la condicion que si la posicion en pixeles +100 es menor o igual a la posicion final no haga nada,
    //esto se hace para que no haga un salto si no estamos en el final, ahora sino, se ejecuta la accion de abajo
    if (scrollController.position.pixels + 100 <=
        scrollController.position.maxScrollExtent) {
      return;
    } else {
//este animateTo en el caso de scroll es el que controla el scroll
      scrollController.animateTo(
          scrollController.position.pixels +
              120, //esto quiere decir cuantos pixeles va a hacer el salto
          duration:
              const Duration(milliseconds: 300), //el tiempo que va ad urar
          curve:
              Curves.fastLinearToSlowEaseIn); //y el tipo de efecto que va hacer
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size; //informacion del dispositivo
    return Scaffold(
      backgroundColor: Colors.black, //opcional, fondo
      body: MediaQuery.removePadding(
        context: context,
        removeRight: true,
        removeBottom: true,
        child: Stack(
          children: [
            RefreshIndicator(
              color: AppTheme.primary,
              onRefresh: onRefresh,
              child: ListView.builder(
                controller: scrollController,
                physics:
                    const BouncingScrollPhysics(), //efecto tipo IOS al final
                itemCount: imagesIds.length,
                itemBuilder: (BuildContext context, int index) {
                  return FadeInImage(
                      width: double.infinity,
                      height: 300,
                      fit: BoxFit.cover,
                      placeholder: const AssetImage('assets/jar-loading.gif'),
                      image: NetworkImage(
                          'https://picsum.photos/id/${imagesIds[index]}/500/300'));
                },
              ),
            ),
            if (isLoading)
              Positioned(
                  bottom: 40,
                  left: size.width * 0.5 -
                      30, //el size es el tamanho del dispositivo * 0.5 quiere decir que va a mostrar a la mitad del tamanho total, - 30 que es la mitad del tamanho del containero que cree
                  child: const _LoadingIcon()),
          ],
        ),
      ),
    );
  }
}

class _LoadingIcon extends StatelessWidget {
  const _LoadingIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.9),
        shape: BoxShape.circle,
      ),
      child: const CircularProgressIndicator(
        color: AppTheme.primary,
      ),
    );
  }
}
