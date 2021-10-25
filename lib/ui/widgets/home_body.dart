import 'package:flutter/material.dart';
import 'package:flutter_designs/ui/widgets/categories_selection.dart';
import 'package:flutter_designs/ui/widgets/page_title.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
          child: Column(
            children: const [
              PageTitle(),
              CategoriesSelection()
            ],
          ),
        ),
      ),
    );
  }
}