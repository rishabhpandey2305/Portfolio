import 'package:flutter/widgets.dart';
import 'package:portfolio/presentation/resources/colors.dart';
import 'package:portfolio/presentation/resources/text_styles.dart';
import 'package:portfolio/presentation/resources/sizes.dart';
import 'package:portfolio/presentation/resources/assets.dart';

late Assets assets;
late AppSizes sizes;
late AppColors colors;
late AppTextStyles styles;

void initializeResources(BuildContext context) {
  sizes = AppSizes()..initializeSize(context);
  assets = Assets();
  colors = AppColors();
  styles = AppTextStyles();
}
