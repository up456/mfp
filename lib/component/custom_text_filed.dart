import 'package:flutter/material.dart';
import 'package:mfp/const/colors.dart';

class CustomTextFiled extends StatelessWidget {
  final String label;
  final FormFieldSetter<String> onSaved;

  const CustomTextFiled({
    required this.label,
    required this.onSaved,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: SECONDARY_COLOR,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                label,
                style: const TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      onSaved: onSaved,
                      validator: (String? val) {
                        if (val == null || val.isEmpty) {
                          return '값을 입력해주세요.';
                        }
                        return null;
                      },
                      cursorColor: PRIMARY_COLOR,
                      decoration: const InputDecoration(
                          border: InputBorder.none,
                          filled: true,
                          fillColor: Colors.transparent),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Icon(Icons.copy),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
