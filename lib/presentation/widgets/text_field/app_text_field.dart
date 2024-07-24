import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lanars_test_task/presentation/core/colors.dart';
import 'package:lanars_test_task/presentation/core/constants/dimensions.dart';
import 'package:lanars_test_task/presentation/core/theme/theme.dart';

class AppTextField extends StatefulWidget {
  final String hintText;
  final String labelText;
  final bool isPassword;
  final bool isEnabled;
  final TextInputType keyboardType;
  final VoidCallback? validate;
  final String? Function(String?) validator;
  final TextEditingController controller;

  const AppTextField({
    super.key,
    required this.hintText,
    required this.labelText,
    required this.controller,
    required this.validator,
    this.keyboardType = TextInputType.text,
    this.isPassword = false,
    this.isEnabled = true,
    this.validate,
  });

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  bool _isPasswordVisible = false;
  final FocusNode _focusNode = FocusNode();

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    _focusNode.addListener(() {
      setState(() {});
      widget.validate?.call();
    });

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: _focusNode,
      keyboardType: widget.keyboardType,
      controller: widget.controller,
      enabled: widget.isEnabled,
      obscureText: widget.isPassword && !_isPasswordVisible,
      textInputAction: TextInputAction.next,
      validator: widget.validator,
      style: context.appTextTheme.h5.paint(AppColors.textFieldTextColor),
      decoration: InputDecoration(
        errorMaxLines: 2,
        contentPadding: EdgeInsets.all(doubleLightSpace.sp),
        labelText: widget.labelText,
        hintText: widget.hintText,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: widget.isPassword
            ? IconButton(
                onPressed: () {
                  setState(() {
                    _isPasswordVisible = !_isPasswordVisible;
                  });
                },
                icon: Icon(
                  _isPasswordVisible ? Icons.visibility_off : Icons.visibility,
                  color: AppColors.secondary,
                ),
              )
            : null,
        //
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.textFieldBorder, width: 1),
        ),
        disabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.textFieldBorder, width: 1),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.primary, width: 2),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.textFieldBorder, width: 1),
        ),
      ),
    );
  }
}
