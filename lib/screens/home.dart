import 'package:betul_portfolio/design/app_colors.dart';
import 'package:flutter/material.dart';

import '../design/app_text_styles.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final description =
      'Lorem ipsum dolor sit amet consectetur. Sed auctor dignissim sit egestas dolor turpis. Nunc congue vulputate tincidunt purus. Non lacus metus tortor elit mauris proin.';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          FittedBox(
              child: topSection(header: headerWidget(), body: bodyWidget())),
          midSection(),
        ],

      ),
    );
  }

  /// top section
  Widget topSection({required Widget header, required Widget body}) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset(
            "assets/images/pattern_image.png",
            repeat: ImageRepeat.repeat,
            color: AppColors.mainBackground,
          ),
        ),
        Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                header,
                body,
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget headerWidget() {
    Size size = MediaQuery.of(context).size;
    var horizontalPadding = (size.width - size.width * 0.77777777777) / 2;
    return Container(
      padding: const EdgeInsets.all(12),
      width: size.width,
      color: AppColors.lightGrey3.withOpacity(0.2),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(
                width: 76,
                child: Text('Betul Ozkan',
                    softWrap: true, style: AppTextStyles.nameTitle)),
            TextButton(
              onPressed: () => {},
              child:
                  const Text('My Project', style: AppTextStyles.menuItemStyle),
            ),
            TextButton(
              onPressed: () => {},
              child: const Text('My Blog', style: AppTextStyles.menuItemStyle),
            ),
            TextButton(
              onPressed: () => {},
              child: const Text('About', style: AppTextStyles.menuItemStyle),
            ),
            TextButton(
              onPressed: () => {},
              child:
                  const Text('Contact Me', style: AppTextStyles.menuItemStyle),
            ),
          ],
        ),
      ),
    );
  }

  Widget bodyWidget() {
    Size size = MediaQuery.of(context).size;
    var horizontalPadding = (size.width - size.width * 0.9298245614);
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 120, horizontal: horizontalPadding),
      child: Row(
        children: [
          profilePicHolder(),
          const SizedBox(width: 50),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              firstLineText(),
              secondLineText(),
              descriptionText(description: description),
            ],
          )
        ],
      ),
    );
  }

  Widget profilePicHolder() {
    return Container(
      width: 158,
      height: 245,
      decoration: BoxDecoration(
        color: AppColors.lightBlack,
        border: Border.all(
          color: Colors.black, // Set the border color here
          width: 3.0, // Set the border height here
        ),
      ),
    );
  }

  Widget firstLineText() {
    return const Padding(
      padding: EdgeInsets.only(bottom: 14),
      child: Row(
        children: [
          Text(
            'Hi, I am ',
            style: AppTextStyles.nameBigTitle,
          ),
          HoverableText(text: 'Betul Ozkan')
        ],
      ),
    );
  }

  Widget secondLineText() {
    return const Padding(
      padding: EdgeInsets.only(bottom: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'I am ',
                style: AppTextStyles.nameMidTitle,
              ),
              InlineHoverableText(text: 'UI/UX Designer'),
              Text(
                ' and also someone',
                style: AppTextStyles.nameMidTitle,
              ),
            ],
          ),
          Row(
            children: [
              Text(
                'who ',
                style: AppTextStyles.nameMidTitle,
              ),
              InlineHoverableText(text: 'writers'),
              Text(
                ' about design.',
                style: AppTextStyles.nameMidTitle,
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget descriptionText({required String description}) {
    return SizedBox(
      width: 800,
      child: Text(
        description,
        softWrap: true,
        style: AppTextStyles.nameSmallTitle,
      ),
    );
  }
}

/// mid section
Widget midSection() {
  return Stack(
    children: <Widget>[
      Container(
        width: double.infinity,
        height: 300,
        margin: const EdgeInsets.fromLTRB(0, 0, 20, 0),
        padding: const EdgeInsets.only(bottom: 10, top: 10),
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(color: Colors.black, width: 3),
            right: BorderSide(color: Colors.black, width: 3),
            bottom: BorderSide(color: Colors.black, width: 3),
            left: BorderSide(color: Colors.black, width: 3), // set left border color to black
          ),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(0),
            topRight: Radius.circular(10),
            bottomRight: Radius.circular(10),
            bottomLeft: Radius.circular(0),
          ),
          shape: BoxShape.rectangle,
        ),
      ),
      Positioned(
        left: 50,
        top: -40,
        //bottom: 80,
        child: Container(
          padding: const EdgeInsets.only(bottom: 10, left: 10, right: 10, top: 10),
          color: Colors.white,
          child: const Text(
            'Some of my Projects',
            style: AppTextStyles.nameMidTitle,
          ),
        ),
      ),
    ],
  );
}

///Components
class HoverableText extends StatefulWidget {
  final String text;

  const HoverableText({required this.text, Key? key}) : super(key: key);

  @override
  _HoverableTextState createState() => _HoverableTextState();
}

class _HoverableTextState extends State<HoverableText> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: Text(
        widget.text,
        style: TextStyle(
          backgroundColor:
              _isHovered ? AppColors.mainYellow : Colors.transparent,
          color: Colors.black,
          fontFamily: 'Sansita',
          fontSize: 70.86,
          fontWeight: FontWeight.w700,
          height: 1.23384137736,
        ),
      ),
    );
  }
}

class InlineHoverableText extends StatefulWidget {
  final String text;
  const InlineHoverableText({Key? key, required this.text}) : super(key: key);

  @override
  _InlineHoverableTextState createState() => _InlineHoverableTextState();
}

class _InlineHoverableTextState extends State<InlineHoverableText> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: Text(
        widget.text,
        style: _isHovered
            ? TextStyle(
                backgroundColor:
                    _isHovered ? AppColors.mainRed : Colors.transparent,
                fontSize: 45.29,
                fontFamily: 'Sansita',
                height: 1.2,
                color: Colors.black)
            : TextStyle(
                backgroundColor:
                    _isHovered ? AppColors.mainRed : Colors.transparent,
                fontSize: 45.29,
                fontFamily: 'Sansita',
                height: 1.2,
                foreground: Paint()
                  ..color = const Color(0xff000000)
                  ..strokeWidth = 1.4
                  ..style = PaintingStyle.stroke
                  ..strokeJoin = StrokeJoin.miter),
      ),
    );
  }
}
