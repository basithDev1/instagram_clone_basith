import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram_clone/Core/colors.dart';

import 'package:intl/intl.dart';

class CommentCard extends StatelessWidget {
  const CommentCard({super.key, required this.snapshot});
  final QueryDocumentSnapshot<Object?> snapshot;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CircleAvatar(
            radius: 19.w,
            backgroundColor: Colors.black,
            backgroundImage: NetworkImage(snapshot['ProfilePic']),
          ),
          SizedBox(
            width: 6.w,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    style: const TextStyle(color: mobileBackgroundColor),
                    children: [
                      TextSpan(
                        text: snapshot['username'],
                        style: const TextStyle(fontWeight: FontWeight.w500),
                      ),
                      WidgetSpan(
                          child: SizedBox(
                        width: 5.w,
                      )),
                      TextSpan(
                        text: DateFormat.yMMMd().format(
                          snapshot['datePublished'].toDate(),
                        ),
                      )
                    ],
                  ),
                ),
                Text(
                  snapshot['comment'],
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                  softWrap: true,
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite),
          )
        ],
      ),
    );
  }
}
