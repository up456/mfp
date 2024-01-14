import 'package:drift/drift.dart' show Value;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:mfp/component/custom_text_filed.dart';
import 'package:mfp/const/colors.dart';
import 'package:mfp/database/drift_database.dart';

class AppBottomSheet extends StatefulWidget {
  const AppBottomSheet({super.key});

  @override
  State<AppBottomSheet> createState() => _AppBottomSheetState();
}

class _AppBottomSheetState extends State<AppBottomSheet> {
  final GlobalKey<FormState> formKey = GlobalKey();

  String? title;
  String? userId;
  String? userPw;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    // final bottomInset = MediaQuery.of(context).viewInsets.bottom;
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Container(
        color: Colors.white,
        height: screenHeight * 0.9,
        child: Form(
          key: formKey,
          child: Column(
            children: [
              CustomTextFiled(
                label: '앱',
                onSaved: (String? val) {
                  title = val;
                },
              ),
              CustomTextFiled(
                label: 'ID',
                onSaved: (String? val) {
                  userId = val;
                },
              ),
              CustomTextFiled(
                  label: 'PW',
                  onSaved: (String? val) {
                    userPw = val;
                  }),
              _SavedButton(
                onPressed: onSavePressed,
              )
            ],
          ),
        ),
      ),
    );
  }

  void onSavePressed() {
    if (formKey.currentState == null) {
      return;
    }

    if (formKey.currentState!.validate()) {
      print('에러가 없습니다..');
      formKey.currentState!.save();

      final key = GetIt.I<LocalDatabase>().createApp(
        AppCompanion(
            title: Value(title!),
            userId: Value(userId!),
            userPw: Value(userPw!)),
      );
      Navigator.of(context).pop();
    } else {
      print('에러가 있습니다.');
    }
  }
}

class _SavedButton extends StatelessWidget {
  final VoidCallback onPressed;

  const _SavedButton({required this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Expanded(
            child: ElevatedButton(
              onPressed: onPressed,
              child: Text('저장'),
            ),
          ),
        ],
      ),
    );
  }
}
