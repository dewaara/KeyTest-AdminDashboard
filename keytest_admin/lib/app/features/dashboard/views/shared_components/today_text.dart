import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TodayText extends StatelessWidget {
  const TodayText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 200),
      child: Card(
        color: Theme.of(context).canvasColor.withOpacity(.4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              color: Colors.pink,
              child: Text(
                "Today",
                style: Theme.of(context).textTheme.caption,
              ),
            ),
            Card(
              color: Theme.of(context).canvasColor.withOpacity(.4),
              child: Text(
                DateFormat.yMMMEd().format(DateTime.now()),
              ),
            )
          ],
        ),
      ),
    );
  }
}
