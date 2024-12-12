import 'package:betuptip/ui/common/app_colors.dart';
import 'package:betuptip/ui/extenstions/app_typography.dart';
import 'package:betuptip/ui/extenstions/palette.dart';
import 'package:betuptip/utilities/string_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final double? height;
  final double? width;
  final Color? backgroundColor;
  final Color? textColor;
  final bool isDisabled;
  final String? icon;
  final VoidCallback? onTap;

  const PrimaryButton({
    super.key,
    required this.text,
    this.height,
    this.width,
    this.backgroundColor,
    this.textColor,
    this.isDisabled = false,
    this.icon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    Palette? palette = theme.extension<Palette>();
    AppTypography? appTypography = theme.extension<AppTypography>();
    if (isDisabled) {
      return Container(
        height: height ?? 48.h,
        width: width ?? double.infinity,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: palette?.allGrey100,
          borderRadius: BorderRadius.circular(40.r),
        ),
        child: Text(
          text,
          style: appTypography?.buttonInput?.copyWith(
            color: palette?.white,
          ),
        ),
      );
    }
    return Container(
      height: 48.h,
      width: width ?? double.infinity,
      decoration: BoxDecoration(
        color: backgroundColor ?? palette?.white,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Material(
        color: AppColors.kcPrimaryOrange,
        borderRadius: BorderRadius.circular(40.r),
        child: InkWell(
          borderRadius: BorderRadius.circular(40.r),
          onTap: onTap,
          child: SizedBox(
            height: 48.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  text,
                  style: appTypography?.buttonInput?.copyWith(
                    color: textColor ?? palette?.white,
                  ),
                ),
                Builder(builder: (context) {
                  if (StringUtil.isNotEmpty(icon)) {
                    return Row(
                      children: [
                        SizedBox(
                          width: 8.w,
                        ),
                        SvgPicture.asset(
                          icon!,
                          height: 20.h,
                          width: 20.w,
                        )
                      ],
                    );
                  }

                  return const SizedBox.shrink();
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
