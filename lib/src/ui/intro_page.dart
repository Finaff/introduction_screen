import 'package:flutter/material.dart';
import 'package:introduction_screen/src/model/page_view_model.dart';
import 'package:introduction_screen/src/ui/intro_content.dart';

class IntroPage extends StatelessWidget {
  final PageViewModel page;

  const IntroPage({Key key, @required this.page}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: page.decoration.pageColor,
      decoration: page.decoration.boxDecoration,
      child: SafeArea(
        top: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            if (page.image != null)
              Expanded(
                flex: 2,
                child: Padding(
                  padding: page.decoration.imagePadding,
                  child: page.image,
                ),
              ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 70.0),
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: IntroContent(page: page),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
