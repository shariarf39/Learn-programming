import 'package:better_learn_programming/models/language-model.dart';
import 'package:better_learn_programming/screen/programming_language_study.dart';
import 'package:flutter/material.dart';
import 'language_card.dart';

class LanguageGrid extends StatelessWidget {
  final Language languageData;
  const LanguageGrid({Key key, this.languageData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TopicsCard(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => ProgrammingLanguageStudy(
              id: languageData.id,
            ),
          ),
        );
      },
      heroTag: languageData.imagePath,
      imagePath: languageData.imagePath,
      languageNames: languageData.name,
    );
  }
}
