import '../../exporter.dart';

class SideFoodList extends StatelessWidget {
  const SideFoodList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView(
      children: [
        ...foodList
            .map((e) => ListTile(
                  selectedColor: selectedFoodColor,
                  selected:
                      e == context.watch<CurrentSelectedFood>().selectedFood,
                  dense: true,
                  title: Text(e.name),
                  onTap: () {
                    context.read<CurrentSelectedFood>().selectFood(e);
                    if (checkPlatform() == AppPlatform.MOBILE) {
                      Navigator.pop(context);
                    }
                  },
                ))
            .toList(growable: false)
      ],
    ));
  }
}
