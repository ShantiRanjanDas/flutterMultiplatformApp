import '../../exporter.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedFood = context.watch<CurrentSelectedFood>().selectedFood;
    final imageHeight = MediaQuery.of(context).size.height / 2;
    return Padding(
        padding: padding16,
        child: ListView(
          children: [
            if (checkPlatform() == AppPlatform.DESKTOP ||
                checkPlatform() == AppPlatform.WEB)
              Text(selectedFood.name,
                  style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: size16),
            Container(
              height: imageHeight,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(selectedFood.imageUrl))),
            ),
            const SizedBox(height: size16),
            Text(selectedFood.description),
            const SizedBox(height: size16),
            generateTextList(selectedFood.category),
            const SizedBox(height: size16),
            generateTextList(selectedFood.ingredients),
            const SizedBox(height: size16),
            generateTextList(selectedFood.vegOrNonVeg),
          ],
        ));
  }

  generateTextList(List<String> items) => Wrap(
        children: [...items.map((e) => Text(". $e ")).toList(growable: false)],
      );
}
