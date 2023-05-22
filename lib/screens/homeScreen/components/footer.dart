import 'package:betul_portfolio/design/app_colors.dart';
import 'package:betul_portfolio/design/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  onPressLinkedn() => {};
  onPressBehance() => {};
  onPressMedium() => {};

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 415,
      decoration: const BoxDecoration(
        color: AppColors.mainBlue,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Betul Ozkan', style: AppTextStyles.nameFooter),
              const Text('ozkanb893@gmail.com', style: AppTextStyles.emailTextStyle),
              const SizedBox(height: 18),
              Container(
                width: 360,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: onPressLinkedn,
                      child: SvgPicture.asset(
                        'assets/icons/linkedn.svg', // Path to your SVG icon file
                        width: 30, // Set the desired width
                        height: 30, // Set the desired height
                      ),
                    ),
                    InkWell(
                      onTap: onPressBehance,
                      child: SvgPicture.asset(
                        'assets/icons/behance.svg', // Path to your SVG icon file
                        width: 30, // Set the desired width
                        height: 30, // Set the desired height
                      ),
                    ),
                    InkWell(
                      onTap: onPressMedium,
                      child: SvgPicture.asset(
                        'assets/icons/medium.svg', // Path to your SVG icon file
                        width: 30, // Set the desired width
                        height: 30, // Set the desired height
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          /*const SizedBox(width: 218),*/
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('About the individual', style: AppTextStyles.footerTitle),
              SizedBox(
                width: 500,
                child: Text(
                  'I am a freelance UI/UX designer based. My passion is to using design to inspire and impact others, continue exploring my portfolio to see the works I have created driven by my passion.',
                  style: AppTextStyles.footerDescription,
                  maxLines: 5,
                  overflow: TextOverflow.ellipsis,
                  softWrap: true,
                ),
              ),
              SizedBox(height: 40),
              Text('Coded by Ömer Faruk Demirsoy and Furkan Çevik', style: AppTextStyles.footerConnection,),
            ],
          ),
        ],
      ),
    );
  }
}
