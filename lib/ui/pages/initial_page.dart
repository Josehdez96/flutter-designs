import 'package:flutter/material.dart';
import 'package:flutter_designs/ui/views/destination_view/destination_actions_view.dart';
import 'package:flutter_designs/ui/views/destination_view/destination_description_view.dart';
import 'package:flutter_designs/ui/views/destination_view/destination_title_view.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: const [
            FadeInImage(
              placeholder: AssetImage('assets/loading.gif'),
              image: NetworkImage('https://fotoarte.com.uy/wp-content/uploads/2019/03/Landscape-fotoarte.jpg')
            ),
            DestinationTitleView(),
            DestinationActionsView(),
            SizedBox(height: 30),
            DestinationDescriptionView(),
            SizedBox(height: 50)
          ],
        ),
      ),
    );
  }
}