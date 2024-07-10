import 'package:flutter/material.dart';
import 'package:wasab/core/app_colors/app_colors.dart';
import 'package:wasab/widgets/custom_asset_image/custom_asset_image.dart';
import 'package:wasab/widgets/custom_text/custom_text.dart';

// ignore: must_be_immutable
class ChatMessage extends StatelessWidget {
  final String? image;
  final String? name;
  final String? chat;
  final String? time;
  final String? num;
  const ChatMessage(
      {super.key, this.image, this.name, this.chat, this.time, this.num});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                  width: 64,
                  height: 64,
                  child: CustomAssetImage(assetName: image!)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  CustomText(
                    title: name,
                  ),
                  CustomText(title: chat),
                ],
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              CustomText(title: time),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: num != null ? black : white),
                width: 26,
                height: 26,
                child: Center(
                  child: CustomText(
                    title: num,
                    fontColor: white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
