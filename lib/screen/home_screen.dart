import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:mfp/component/ContentCard.dart';
import 'package:mfp/component/app_bottom_sheet.dart';
import 'package:mfp/const/colors.dart';
import 'package:mfp/database/drift_database.dart';
import 'package:mfp/model/app.dart';
import 'package:path/path.dart';

const DUMY_LIST = ['KT', '카카오톡', '네이버'];

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: renderFloatingActionButton(context),
        body: SafeArea(
          child: StreamBuilder<List<AppData>>(
              stream: GetIt.I<LocalDatabase>().watchApp(),
              builder: (context, snapshot) {
                List<AppData> appList = snapshot.data ?? [];
                return ListView.separated(
                  itemCount: appList.length,
                  separatorBuilder: (context, index) {
                    return const SizedBox(height: 8.0);
                  },
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: ContentCard(title: appList[index].title),
                    );
                  },
                );
              }),
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
