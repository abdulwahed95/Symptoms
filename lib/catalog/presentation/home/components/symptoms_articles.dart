import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:symptoms_statistics/common/config/app_colors.dart';
import 'package:symptoms_statistics/common/config/app_images.dart';

class SymptomsArticles extends StatelessWidget {
  const SymptomsArticles({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AnimatedTextKit(
            animatedTexts: [
              TyperAnimatedText(
                'Articles about how improve your symptoms:',
                textStyle:  TextStyle(
                    color: AppColors.blackColor,
                    fontSize: 16,fontWeight: FontWeight.w600
                ),
                speed: const Duration(milliseconds: 55),
              ),
            ],
            totalRepeatCount: 1,
            pause: const Duration(milliseconds: 5000),
            displayFullTextOnTap: true,
            stopPauseOnTap: true,
          ),

          SizedBox(height: 110,
          child: ListView.builder(
              itemCount: 7,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context,index){
            return Padding(
              padding: const EdgeInsets.all(4.0),
              child:  Column(
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(AppImages.image,width: 60,height: 60,)),
                   const SizedBox(height: 6,),
                    const SizedBox(
                        width:60,
                        child: Text('improvment sleep',
                        style: TextStyle(fontSize: 10),textAlign: TextAlign.center,),)
                  ],
                ),

            );
          }),
          )
        ],
      ),
    );
  }
}
