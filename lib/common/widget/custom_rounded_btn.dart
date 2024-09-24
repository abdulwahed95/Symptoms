import 'package:flutter/material.dart';
import 'package:spring_button/spring_button.dart';
import '../config/app_colors.dart';

class CustomRoundedButton extends StatelessWidget {
  final String? text;
  final Function? pressed;
  final Color? backgroundColor;
  final Color? textColor;
  final Color? borderColor;
  final Icon? icon;
  final double? width;
  final double? height;
  final double? border;
  final bool? iconLeft;
  final bool? load;
  final double? fontSize;
  final bool? springButton;
  const CustomRoundedButton(
      {super.key,
      this.pressed,
      this.text,
      this.border,
      this.backgroundColor,
      this.borderColor,
      this.icon,
      this.textColor,
      this.width,
      this.iconLeft = false,
      this.height,
      this.fontSize,
      this.springButton,
      this.load});
  @override
  Widget build(BuildContext context) {
    return springButton == null || springButton == false
        ? InkWell(
            onTap: () {
              if (pressed != null) pressed!();
            },
            child: Container(
              width: width ?? MediaQuery.of(context).size.width,
              height: height ?? 50,
              decoration: BoxDecoration(
                color: backgroundColor ?? AppColors.primary,
                borderRadius: BorderRadius.circular(border ?? 10),
                border: Border.all(
                  color: borderColor ?? Colors.transparent,
                ),
              ),
              child: load == true
                  ? Container(
                      alignment: AlignmentDirectional.center,
                      width: MediaQuery.of(context).size.width - 24,
                      height: 48,
                      child: const SizedBox(
                        width: 36,
                        height: 36,
                        child: CircularProgressIndicator(
                          color: Colors.white,
                        ),
                      ),
                    )
                  : iconLeft == true
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            (icon == null) ? Container() : icon!,
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              text ?? "",
                              style: TextStyle(
                                  color: textColor ?? Colors.white,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 15),
                            ),
                          ],
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              text ?? "",
                              style: TextStyle(
                                color: textColor ?? Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: fontSize ?? 14,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            (icon == null) ? Container() : icon!
                          ],
                        ),
            ),
          )
        : SpringButton(
            SpringButtonType.OnlyScale,
            Container(
              width: width ?? MediaQuery.of(context).size.width,
              height: height ?? 50,
              decoration: BoxDecoration(
                color: backgroundColor ?? AppColors.primary,
                borderRadius: BorderRadius.circular(border ?? 10),
                border: Border.all(
                  color: borderColor ?? Colors.transparent,
                ),
              ),
              child: load == true
                  ? const Center(
                      child: Padding(
                        padding: EdgeInsets.all(4.0),
                        child: SizedBox(
                          height: 45,
                          width: 40,
                          child: CircularProgressIndicator(
                            color: Colors.white,
                            strokeWidth: 2,
                          ),
                        ),
                      ),
                    )
                  : iconLeft == true
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            (icon == null) ? Container() : icon!,
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              text ?? "",
                              style: TextStyle(
                                  color: textColor ?? AppColors.white,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 15),
                            ),
                          ],
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              text ?? "",
                              style: TextStyle(
                                color: textColor ?? AppColors.white,
                                fontWeight: FontWeight.w800,
                                fontSize: fontSize ?? 15,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            (icon == null) ? Container() : icon!
                          ],
                        ),
            ),
            scaleCoefficient: 0.90,
            onTapDown: (m) {},
            onLongPress: () {},
            onTap: () {
              if (pressed != null) pressed!();
            },
          );
  }
}
