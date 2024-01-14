import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mfp/component/ContentCard.dart';
import 'package:mfp/component/app_bottom_sheet.dart';
import 'package:mfp/const/colors.dart';
import 'package:path/path.dart';

const DUMY_LIST = ['KT', '카카오톡', '네이버'];

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: renderFloatingActionButton(context),
        body: SafeArea(
          child: ListView.separated(
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
          ),
        ));
  }

  FloatingActionButton renderFloatingActionButton(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (_) {
              return AppBottomSheet();
            });
      },
      backgroundColor: PRIMARY_COLOR,
      child: Icon(Icons.add),
    );
  }
}
