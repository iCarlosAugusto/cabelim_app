import 'package:cabelin_app/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key,
    required this.title,
    required this.onTap,
    this.icon,
    this.isDisabled = false,
    this.isLoading = false,
    this.fullWidth = false,
    this.margin,
    this.color,
    this.padding,
  });

  final String title;
  final void Function() onTap;
  final IconData? icon;
  final bool isDisabled;
  final bool isLoading;
  final bool fullWidth;
  final EdgeInsets? margin;
  final Color? color;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      margin: margin,
      child: ElevatedButton(
        
          style: ElevatedButton.styleFrom(
            backgroundColor: color,
            padding: const EdgeInsets.only(left: 16, right: 16, bottom: 0, top: 0),
          ),
          onPressed: isDisabled || isLoading ? null : onTap,
          child: Container(
            padding: padding,
            child: Row(
              mainAxisSize: fullWidth ? MainAxisSize.max : MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Visibility(
                  visible: icon != null && isLoading == false,
                  child: Icon(icon, size: 22, color: Colors.white)
                ),
                isLoading
                    ? const SizedBox(
                        height: 24,
                        width: 24,
                        child: CircularProgressIndicator())
                    : TextWidget(
                      margin: const EdgeInsets.only(left: 8),
                      title, 
                      fontSize: AvailableFontSizes.small, 
                      isFontWeight: true,
                      color: Colors.white,
                    )
              ],
            ),
          )),
    );
  }
}
