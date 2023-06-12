import '../../exporter.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    switch (checkPlatform()) {
      case AppPlatform.MOBILE:
        return Drawer(child: createWidget());

      case AppPlatform.WEB:
      case AppPlatform.DESKTOP:
        return Container(
          width: sideBarWidth,
          height: screenWidthHeight,
          color: Theme.of(context).primaryColor,
          child: createWidget(),
        );
    }
  }

  createWidget() => Padding(
        padding: EdgeInsets.symmetric(horizontal: size8, vertical: size16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SizedBox(height: size16),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size16),
              child: Text(
                foodItemStr,
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    decorationThickness: size2),
              ),
            ),
            SideFoodList(),
          ],
        ),
      );
}
