import 'package:flutter/material.dart';

class DestinationDescriptionView extends StatelessWidget {
  const DestinationDescriptionView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Text(
        'Velit Lorem et non laborum reprehenderit exercitation voluptate nostrud duis laborum ea. Nisi esse elit esse eu ipsum qui qui adipisicing. Cupidatat ad reprehenderit est veniam ea nulla aute elit dolor nostrud Lorem. Non nostrud minim proident dolor est Lorem fugiat velit voluptate incididunt nisi commodo irure tempor. Id id in cupidatat veniam fugiat ullamco ea. Anim sint laboris dolor fugiat enim occaecat est cupidatat id eiusmod nisi in cupidatat. Commodo irure qui qui dolore labore. Esse proident tempor et deserunt et aute anim laborum labore dolor duis non magna. Proident aliquip ex ad in aliqua mollit ea aute enim commodo. Mollit deserunt aute nostrud ad nulla qui elit do aliquip tempor nostrud reprehenderit. Commodo ea exercitation Lorem incididunt quis quis eiusmod reprehenderit deserunt quis do excepteur consectetur velit. Eu dolor occaecat dolore irure do sint esse id ex consequat exercitation. Laborum laboris adipisicing reprehenderit esse.',
        style: TextStyle(
          fontSize: Theme.of(context).textTheme.subtitle1!.fontSize ?? 28,
          color: Colors.black
        ),
      ),
    );
  }
}