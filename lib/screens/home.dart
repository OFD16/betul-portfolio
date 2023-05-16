import 'dart:js_interop';

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
          const SizedBox(height: 20),
          //midSection(),
          // const CustomTitleWidget(
          //   height: 200,
          //   width: double.infinity,
          //   title: 'Some of my Projects',
          //   radius: 20,
          // ),
          cardListerWidget(
            title: 'Some of my Projects',
            content: listerContentsWidget(),
          ),

          cardListerWidget(
            title: 'Some of my Blog Posts',
            content: listerContentsWidget(),
            isRight: true,
          ),
          // Stack(
          //   children: <Widget>[
          //     Container(
          //       width: double.infinity,
          //       margin: const EdgeInsets.fromLTRB(0, 20, 20, 10),
          //       padding: const EdgeInsets.all(30),
          //       decoration: BoxDecoration(
          //         border: Border.all(color: Colors.black, width: 2),
          //         borderRadius: const BorderRadius.only(
          //           topRight: Radius.circular(20),
          //           bottomRight: Radius.circular(20),
          //         ),
          //         shape: BoxShape.rectangle,
          //         color: AppColors.lightGrey4,
          //       ),
          //       child: SingleChildScrollView(
          //         child: GridView.builder(
          //           gridDelegate:
          //               const SliverGridDelegateWithFixedCrossAxisCount(
          //             crossAxisCount: 2,
          //           ),
          //           physics: const NeverScrollableScrollPhysics(),
          //           shrinkWrap: true,
          //           itemCount: 4,
          //           itemBuilder: (BuildContext context, int index) {
          //             return Stack(
          //               children: <Widget>[
          //                 Container(
          //                     height: 454,
          //                     width: double.infinity,
          //                     margin: const EdgeInsets.fromLTRB(20, 20, 20, 10),
          //                     padding: const EdgeInsets.all(30),
          //                     decoration: BoxDecoration(
          //                       border:
          //                           Border.all(color: Colors.black, width: 2),
          //                       borderRadius:
          //                           const BorderRadius.all(Radius.circular(20)),
          //                       boxShadow: [
          //                         BoxShadow(
          //                           color: Colors.black.withOpacity(0.7),
          //                           spreadRadius: 2,
          //                           blurRadius: 0,
          //                           offset: const Offset(4, 4),
          //                         ),
          //                       ],
          //                       shape: BoxShape.rectangle,
          //                       color: AppColors.lightGreen,
          //                     ),
          //                     child: Column(
          //                       children: [
          //                         Container(
          //                           margin: const EdgeInsets.only(bottom: 20),
          //                           height: 195,
          //                           width: 460,
          //                           child: AspectRatio(
          //                             aspectRatio:
          //                                 460 / 195, // Width divided by Height
          //                             child: Image.network(
          //                               'https://images.ctfassets.net/hrltx12pl8hq/7JnR6tVVwDyUM8Cbci3GtJ/bf74366cff2ba271471725d0b0ef418c/shutterstock_376532611-og.jpg',
          //                               fit: BoxFit.cover,
          //                             ),
          //                           ),
          //                         ),
          //                         const Text(
          //                           'Lorem ipsum dolor sit amet consectetur. Velit semper dignissim lacus vel sit vehicula facilisis arcu pharetra. ömer ömer ömer ömer ömer  ömer  ömer  ömer  ömer  ömer  ömer  ömer  ömer  Turpis volutpat tristique nulla accumsan',
          //                           style: AppTextStyles.cardDescription,
          //                         ),
          //                       ],
          //                     )),
          //                 Positioned(
          //                   left: 50,
          //                   top: -2,
          //                   child: Container(
          //                     padding: const EdgeInsets.only(
          //                         bottom: 10, left: 10, right: 10),
          //                     decoration: const BoxDecoration(
          //                       gradient: LinearGradient(
          //                         colors: [
          //                           AppColors.lightGrey4,
          //                           AppColors.lightGreen
          //                         ],
          //                         begin: Alignment.topCenter,
          //                         end: Alignment.bottomCenter,
          //                         stops: [0.5, 0.5],
          //                       ),
          //                     ),
          //                     child: const Text(
          //                       'Redisgn',
          //                       style: AppTextStyles.cardTitle,
          //                     ),
          //                   ),
          //                 ),
          //               ],
          //             );
          //           },
          //         ),
          //         // child: GridView.count(
          //         //   crossAxisCount: 2,
          //         //   shrinkWrap: true,
          //         //   physics: const NeverScrollableScrollPhysics(),
          //         //   children: List.generate(6, (index) {
          //         //     return
          //         //   }),
          //         // ),
          //       ),
          //     ),
          //     Positioned(
          //       left: 50,
          //       top: 0,
          //       child: Container(
          //         padding:
          //             const EdgeInsets.only(bottom: 10, left: 10, right: 10),
          //         decoration: const BoxDecoration(
          //           gradient: LinearGradient(
          //             colors: [AppColors.mainBackground, AppColors.lightGrey4],
          //             begin: Alignment.topCenter,
          //             end: Alignment.bottomCenter,
          //             stops: [0.5, 0.5],
          //           ),
          //         ),
          //         child: const Text(
          //           'Some of My Projects',
          //           style: AppTextStyles.nameTitle,
          //         ),
          //       ),
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }

  Widget listerContentsWidget() {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 4,
      itemBuilder: (BuildContext context, int index) {
        return Stack(
          children: <Widget>[
            Container(
                height: 454,
                width: double.infinity,
                margin: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                padding: const EdgeInsets.all(30),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2),
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.7),
                      spreadRadius: 2,
                      blurRadius: 0,
                      offset: const Offset(4, 4),
                    ),
                  ],
                  shape: BoxShape.rectangle,
                  color: AppColors.lightGreen,
                ),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 20),
                      height: 195,
                      width: 460,
                      child: AspectRatio(
                        aspectRatio: 460 / 195, // Width divided by Height
                        child: Image.network(
                          'https://images.ctfassets.net/hrltx12pl8hq/7JnR6tVVwDyUM8Cbci3GtJ/bf74366cff2ba271471725d0b0ef418c/shutterstock_376532611-og.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const Text(
                      'Lorem ipsum dolor sit amet consectetur. Velit semper dignissim lacus vel sit vehicula facilisis arcu pharetra. ömer ömer ömer ömer ömer  ömer  ömer  ömer  ömer  ömer  ömer  ömer  ömer  Turpis volutpat tristique nulla accumsan',
                      style: AppTextStyles.cardDescription,
                    ),
                  ],
                )),
            Positioned(
              left: 50,
              top: -2,
              child: Container(
                padding: const EdgeInsets.only(bottom: 10, left: 10, right: 10),
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [AppColors.lightGrey4, AppColors.lightGreen],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0.5, 0.5],
                  ),
                ),
                child: const Text(
                  'Redisgn',
                  style: AppTextStyles.cardTitle,
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  //Lister
  Widget cardListerWidget(
      {Widget? content,
      BoxDecoration? decoration,
      String? title,
      TextStyle? titleStyle,
      List<Color>? titleBackgroundColors,
      EdgeInsetsGeometry? mainAxis,
      double? positionTop,
      double? positionLeft,
      bool isRight = false}) {
    Color starterColor = titleBackgroundColors?[0] ?? AppColors.mainBackground;
    Color finishColor = titleBackgroundColors?[1] ?? AppColors.lightGrey4;

    return Stack(
      children: <Widget>[
        Container(
          width: double.infinity,
          margin: mainAxis ?? const EdgeInsets.all(20),
          padding: const EdgeInsets.all(30),
          decoration: decoration ??
              BoxDecoration(
                border: Border.all(color: Colors.black, width: 2),
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                shape: BoxShape.rectangle,
                color: finishColor,
              ),
          child: SingleChildScrollView(
            child: content,
          ),
        ),
        Positioned(
          left: isRight ? null : positionLeft ?? 50,
          right: isRight ? positionLeft ?? 50 : null,
          top: positionTop ?? 0,
          child: Container(
            padding: const EdgeInsets.only(bottom: 10, left: 10, right: 10),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [starterColor, finishColor],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.5, 0.5],
              ),
            ),
            child: Text(
              title ?? 'title of the Card',
              style: titleStyle ?? AppTextStyles.nameTitle,
            ),
          ),
        ),
      ],
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
      padding:
          EdgeInsets.symmetric(vertical: 120, horizontal: horizontalPadding),
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
  return const Placeholder();
}

///Components

class CustomDraw extends CustomPainter {
  late Paint painter;
  late double radius;
  late double textWidth;

  CustomDraw(Color color, this.textWidth, {this.radius = 0}) {
    painter = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2
      ..color = color;
  }

  @override
  void paint(Canvas canvas, Size size) {
    var path = Path();

    path.moveTo(size.width - ((size.width - textWidth) / 2), 0);

    path.lineTo(size.width - radius, 0);
    path.cubicTo(size.width - radius, 0, size.width, 0, size.width, radius);
    path.lineTo(size.width, size.height - radius);
    path.cubicTo(size.width, size.height - radius, size.width, size.height,
        size.width - radius, size.height);

    path.lineTo(radius, size.height);
    path.cubicTo(radius, size.height, 0, size.height, 0, size.height - radius);

    path.lineTo(0, radius);
    path.cubicTo(0, radius, 0, 0, radius, 0);
    path.lineTo(((size.width - textWidth) / 2), 0);

    canvas.drawPath(path, painter);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class CustomTitleWidget extends StatefulWidget {
  final double height;
  final double width;
  final double? radius;
  final String title;
  const CustomTitleWidget(
      {Key? key,
      required this.height,
      required this.width,
      required this.title,
      this.radius})
      : super(key: key);

  @override
  State<CustomTitleWidget> createState() => _CustomTitleWidgetState();
}

class _CustomTitleWidgetState extends State<CustomTitleWidget> {
  GlobalKey textKey = GlobalKey();
  double textHeight = 0.0;
  double textWidth = 0.0;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        final textKeyContext = textKey.currentContext;
        if (textKeyContext != null) {
          final box = textKeyContext.findRenderObject() as RenderBox;
          textHeight = box.size.height;
          textWidth = box.size.width;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.topCenter,
      children: [
        CustomPaint(
          painter: CustomDraw(
            Colors.black,
            textWidth,
            radius: widget.radius ?? 0,
          ),
          child: SizedBox(
            height: widget.height,
            width: widget.width,
          ),
        ),
        Positioned(
          top: -textHeight / 2,
          left: 60,
          child: Padding(
            key: textKey,
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Container(
              color: Colors.transparent,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                widget.title,
                style: AppTextStyles.nameTitle,
              ),
            ),
          ),
        )
      ],
    );
  }
}

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
