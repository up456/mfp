import 'package:flutter/material.dart';
import 'package:mfp/component/ContentCard.dart';

const DUMY_LIST = ['KT', '카카오톡', '네이버'];

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: ListView.separated(
        itemCount: 3,
        separatorBuilder: (context, index) {
          return const SizedBox(height: 8.0);
        },
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: ContentCard(title: DUMY_LIST[0]),
          );
        },
      )),
    );
  }
}
