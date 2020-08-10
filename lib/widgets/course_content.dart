import 'package:flutter/material.dart';
import 'package:courseapp/constants.dart';

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
