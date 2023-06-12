import '../exporter.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    switch (checkPlatform()) {
      case AppPlatform.MOBILE:
        return Scaffold(
          drawer: const SideMenu(),
          appBar: AppBar(
            title: Text(context.watch<CurrentSelectedFood>().selectedFood.name),
          ),
          body: const DetailsScreen(),
        );

      case AppPlatform.WEB:
      case AppPlatform.DESKTOP:
        return Scaffold(
          body: Row(
            children: const [
              SideMenu(),
              Expanded(child: DetailsScreen()),
            ],
          ),
        );
    }
  }
}
