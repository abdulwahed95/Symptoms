import 'package:flutter/material.dart';
import 'package:spring_button/spring_button.dart';
import '../config/app_colors.dart';

class CustomAppBar extends AppBar {
  CustomAppBar({
    super.key,
    super.actions,
  }) : super(
          centerTitle: true,
          leading: SpringButton(
            SpringButtonType.OnlyScale,
            const Padding(
              padding: EdgeInsetsDirectional.symmetric(vertical: 16),
              child: Icon(Icons.arrow_back),
            ),
            scaleCoefficient: 0.90,
            onTapDown: (m) {},
            onLongPress: () {},
            onTap: () {},
          ),
          backgroundColor: AppColors.white,
          elevation: 0,
          titleSpacing: 0,
          automaticallyImplyLeading: false,
        );
}
