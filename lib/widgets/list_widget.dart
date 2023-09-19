import 'package:cabelin_app/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class ListWidget extends StatelessWidget {

  ListWidget({
    super.key,
    required this.itemBuilder,
    required this.itemCount,
    this.separatorBuilder,
    this.customEmpty,
    this.isLoading,
    this.scrollDirection = Axis.vertical,
    this.physics
  });

  Widget? Function(BuildContext, int) itemBuilder;
  Widget Function(BuildContext, int)? separatorBuilder;
  Widget? customEmpty;
  Axis scrollDirection = Axis.vertical;
  ScrollPhysics? physics;
  int itemCount;
  bool? isLoading;

  @override
  Widget build(BuildContext context) {
    return 
    isLoading != null && isLoading == false && itemCount == 0 ? (
      customEmpty ?? const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextWidget(
              "Encontramos nada por aqui",
              textAlign: TextAlign.center,
            )
          ],
        )
      ):
    isLoading != null && isLoading == true ? 
      const Align(
        child: CircularProgressIndicator()
      )
      : ListView.separated(
        shrinkWrap: true,
        scrollDirection: scrollDirection,
        physics: physics,
        itemBuilder: itemBuilder,
        separatorBuilder: separatorBuilder ?? (_, __) =>  Container(height: 16),
        itemCount: itemCount
      );
    }
}