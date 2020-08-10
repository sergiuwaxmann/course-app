import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:courseapp/constants.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xFFF5F4EF),
          image: DecorationImage(
            image: AssetImage('assets/images/ux-big.png'),
            alignment: Alignment.topRight,
          ),
        ),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                left: 20,
                right: 20,
                top: 50,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      SvgPicture.asset('assets/icons/arrow-left.svg'),
                      SvgPicture.asset('assets/icons/more-vertical.svg'),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ClipPath(
                    clipper: BestSellerClipper(),
                    child: Container(
                      color: kBestSellerColor,
                      padding: EdgeInsets.only(
                        left: 10,
                        right: 20,
                        top: 5,
                        bottom: 5,
                      ),
                      child: Text(
                        'BestSeller'.toUpperCase(),
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    'Design Thinking',
                    style: kHeadingextStyle,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: <Widget>[
                      SvgPicture.asset('assets/icons/person.svg'),
                      SizedBox(
                        width: 5,
                      ),
                      Text('18k'),
                      SizedBox(
                        width: 20,
                      ),
                      SvgPicture.asset('assets/icons/star.svg'),
                      SizedBox(
                        width: 5,
                      ),
                      Text('4.8'),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '\$50 ',
                          style: kHeadingextStyle.copyWith(
                            fontSize: 32,
                          ),
                        ),
                        TextSpan(
                          text: '\$70',
                          style: TextStyle(
                            color: kTextColor.withOpacity(.5),
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Stack(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Course Content',
                            style: kTitleTextStyle,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          CourseContent(
                            number: '01',
                            duration: '5:35',
                            title: 'Welcome to the Course',
                            isAvailable: true,
                          ),
                          CourseContent(
                            number: '02',
                            duration: '12:48',
                            title: 'Introduction',
                            isAvailable: true,
                          ),
                          CourseContent(
                            number: '03',
                            duration: '19:04',
                            title: 'Design Thinking Process',
                          ),
                          CourseContent(
                            number: '04',
                            duration: '37:54',
                            title: 'Customer perspective',
                          ),
                          CourseContent(
                            number: '05',
                            duration: '26:35',
                            title: 'Empathy in Action',
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      left: 0,
                      right: 0,
                      bottom: 0,
                      child: Container(
                        width: double.infinity,
                        height: 100,
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40),
                          boxShadow: [
                            BoxShadow(
                              color: kTextColor.withOpacity(.1),
                              offset: Offset(0, 4),
                              blurRadius: 50,
                            ),
                          ],
                        ),
                        child: Row(
                          children: <Widget>[
                            Container(
                              width: 80,
                              height: 56,
                              padding: EdgeInsets.all(14),
                              decoration: BoxDecoration(
                                color: Color(0xFFFFEDEE),
                                borderRadius: BorderRadius.circular(40),
                              ),
                              child: SvgPicture.asset(
                                  'assets/icons/shopping-bag.svg'),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: Container(
                                height: 56,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: kBlueColor,
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                child: Text(
                                  'Buy Now',
                                  style: kSubtitleTextStyle.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BestSellerClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    var path = Path();
    path.lineTo(size.width - 20, 0);
    path.lineTo(size.width, size.height / 2);
    path.lineTo(size.width - 20, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return false;
  }
}

class CourseContent extends StatelessWidget {
  final String number;
  final String duration;
  final String title;
  final bool isAvailable;
  const CourseContent({
    Key key,
    this.number,
    this.duration,
    this.title,
    this.isAvailable = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 30,
      ),
      child: Row(
        children: <Widget>[
          Text(
            number,
            style: kHeadingextStyle.copyWith(
              fontSize: 32,
              color: kTextColor.withOpacity(.15),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: '$duration mins\n',
                  style: TextStyle(
                    fontSize: 18,
                    color: kTextColor.withOpacity(.5),
                  ),
                ),
                TextSpan(
                  text: title,
                  style: kSubtitleTextStyle.copyWith(
                    fontWeight: FontWeight.w600,
                    height: 1.5,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            width: 40,
            height: 40,
            margin: EdgeInsets.only(
              left: 20,
            ),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: kGreenColor.withOpacity(isAvailable ? 1 : .5),
            ),
            child: Icon(
              Icons.play_arrow,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
