import 'package:flutter/material.dart';

import '../constants/constants.dart';

class SessionCard extends StatelessWidget {
  final int sessionNum;
  final bool isDone;
  final Function()? press;
  const SessionCard.session({
    Key? key,
    required this.sessionNum,
    this.isDone = false,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Container(
          margin: const EdgeInsets.only(top: 10),
          width: constraint.maxWidth / 2 - 10,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(13),
            boxShadow: const [
              BoxShadow(
                offset: Offset(0, 15),
                blurRadius: 20,
                spreadRadius: -10,
                color: kShadowColor,
              ),
            ],
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () => press,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 40,
                      width: 45,
                      decoration: BoxDecoration(
                        color: isDone ? kBlueColor : Colors.white,
                        shape: BoxShape.circle,
                        border: Border.all(color: kBlueColor),
                      ),
                      child: Icon(
                        Icons.play_arrow,
                        color: isDone ? Colors.white : kBlueColor,
                      ),
                    ),
                    const SizedBox(width: 5),
                    Text(
                      "Session $sessionNum",
                      style: Theme.of(context).textTheme.subtitle1,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}
