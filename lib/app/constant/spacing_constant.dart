import 'package:flutter/material.dart';

/// Spacing constants used throughout the application
/// For SizedBox height and width values
class AppSpacing {
  AppSpacing._();

  // ==================== HEIGHT SPACING ====================
  /// Very small spacing - 4px
  static const double height4 = 4.0;

  /// Small spacing - 8px
  static const double height8 = 8.0;

  /// Medium-small spacing - 12px
  static const double height12 = 12.0;

  /// Medium spacing - 16px
  static const double height16 = 16.0;

  /// Medium-large spacing - 20px
  static const double height20 = 20.0;

  /// Large spacing - 24px
  static const double height24 = 24.0;

  /// Very large spacing - 32px
  static const double height32 = 32.0;

  /// Extra large spacing - 40px
  static const double height40 = 40.0;

  /// Very extra large spacing - 48px
  static const double height48 = 48.0;

  /// Huge spacing - 64px
  static const double height64 = 64.0;

  // ==================== WIDTH SPACING ====================
  /// Very small spacing - 4px
  static const double width4 = 4.0;

  /// Small spacing - 8px
  static const double width8 = 8.0;

  /// Medium-small spacing - 12px
  static const double width12 = 12.0;

  /// Medium spacing - 16px
  static const double width16 = 16.0;

  /// Medium-large spacing - 20px
  static const double width20 = 20.0;

  /// Large spacing - 24px
  static const double width24 = 24.0;

  /// Very large spacing - 32px
  static const double width32 = 32.0;

  /// Extra large spacing - 40px
  static const double width40 = 40.0;

  /// Very extra large spacing - 48px
  static const double width48 = 48.0;

  /// Huge spacing - 64px
  static const double width64 = 64.0;

  // ==================== PADDING SPACING ====================
  /// Very small padding - 4px
  static const EdgeInsets padding4 = EdgeInsets.all(4.0);

  /// Small padding - 8px
  static const EdgeInsets padding8 = EdgeInsets.all(8.0);

  /// Medium-small padding - 12px
  static const EdgeInsets padding12 = EdgeInsets.all(12.0);

  /// Medium padding - 16px
  static const EdgeInsets padding16 = EdgeInsets.all(16.0);

  /// Medium-large padding - 20px
  static const EdgeInsets padding20 = EdgeInsets.all(20.0);

  /// Large padding - 24px
  static const EdgeInsets padding24 = EdgeInsets.all(24.0);

  /// Very large padding - 32px
  static const EdgeInsets padding32 = EdgeInsets.all(32.0);
}

/// SizedBox helper widgets
/// Usage: AppSizedBox.height8
class AppSizedBox {
  AppSizedBox._();

  // ==================== HEIGHT WIDGETS ====================
  /// SizedBox(height: 4)
  static const Widget height4 = SizedBox(height: AppSpacing.height4);

  /// SizedBox(height: 8)
  static const Widget height8 = SizedBox(height: AppSpacing.height8);

  /// SizedBox(height: 12)
  static const Widget height12 = SizedBox(height: AppSpacing.height12);

  /// SizedBox(height: 16)
  static const Widget height16 = SizedBox(height: AppSpacing.height16);

  /// SizedBox(height: 20)
  static const Widget height20 = SizedBox(height: AppSpacing.height20);

  /// SizedBox(height: 24)
  static const Widget height24 = SizedBox(height: AppSpacing.height24);

  /// SizedBox(height: 32)
  static const Widget height32 = SizedBox(height: AppSpacing.height32);

  /// SizedBox(height: 40)
  static const Widget height40 = SizedBox(height: AppSpacing.height40);

  /// SizedBox(height: 48)
  static const Widget height48 = SizedBox(height: AppSpacing.height48);

  /// SizedBox(height: 64)
  static const Widget height64 = SizedBox(height: AppSpacing.height64);

  // ==================== WIDTH WIDGETS ====================
  /// SizedBox(width: 4)
  static const Widget width4 = SizedBox(width: AppSpacing.width4);

  /// SizedBox(width: 8)
  static const Widget width8 = SizedBox(width: AppSpacing.width8);

  /// SizedBox(width: 12)
  static const Widget width12 = SizedBox(width: AppSpacing.width12);

  /// SizedBox(width: 16)
  static const Widget width16 = SizedBox(width: AppSpacing.width16);

  /// SizedBox(width: 20)
  static const Widget width20 = SizedBox(width: AppSpacing.width20);

  /// SizedBox(width: 24)
  static const Widget width24 = SizedBox(width: AppSpacing.width24);

  /// SizedBox(width: 32)
  static const Widget width32 = SizedBox(width: AppSpacing.width32);

  /// SizedBox(width: 40)
  static const Widget width40 = SizedBox(width: AppSpacing.width40);

  /// SizedBox(width: 48)
  static const Widget width48 = SizedBox(width: AppSpacing.width48);

  /// SizedBox(width: 64)
  static const Widget width64 = SizedBox(width: AppSpacing.width64);
}
