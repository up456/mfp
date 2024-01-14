import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mfp/component/custom_text_filed.dart';

class AppBottomSheet extends StatelessWidget {
  const AppBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    // final bottomInset = MediaQuery.of(context).viewInsets.bottom;
    return Container(
      color: Colors.white,
      height: screenHeight * 0.9,
      child: Column(
        children: [
          CustomTextFiled(label: 'ID'),
          CustomTextFiled(label: 'PW'),
        ],
      ),
    );
  }
}
