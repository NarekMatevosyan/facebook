import 'package:flutter/material.dart';

class ActionSectionButtons extends StatelessWidget {
  const ActionSectionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: width / 4.8,
          child: TextButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all<OutlinedBorder>(
                const RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ),
              ),
            ),
            child: const Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 3.0),
                  child: Icon(
                    Icons.thumb_up_alt_outlined,
                    color: Color.fromARGB(255, 109, 107, 107),
                    size: 15.0,
                  ),
                ),
                Text(
                  'Нравиться',
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Color.fromARGB(255, 109, 107, 107),
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
            onPressed: () {},
          ),
        ),
        SizedBox(
          width: width / 3,
          child: TextButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all<OutlinedBorder>(
                const RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ),
              ),
            ),
            child: const Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 3.0),
                  child: Icon(
                    Icons.message_outlined,
                    color: Color.fromARGB(255, 109, 107, 107),
                    size: 15.0,
                  ),
                ),
                Text(
                  'Комментировать',
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Color.fromARGB(255, 109, 107, 107),
                  ),
                ),
              ],
            ),
            onPressed: () {},
          ),
        ),
        SizedBox(
          width: width / 4.5,
          child: TextButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all<OutlinedBorder>(
                const RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ),
              ),
            ),
            child: const Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 3.0),
                  child: Icon(
                    Icons.send_sharp,
                    color: Color.fromARGB(255, 109, 107, 107),
                    size: 15.0,
                  ),
                ),
                Text(
                  'Отправить',
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Color.fromARGB(255, 109, 107, 107),
                  ),
                ),
              ],
            ),
            onPressed: () {},
          ),
        ),
        SizedBox(
          width: width / 4.26,
          child: TextButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all<OutlinedBorder>(
                const RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ),
              ),
            ),
            child: const Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 3.0),
                  child: Icon(
                    Icons.share,
                    color: Color.fromARGB(255, 109, 107, 107),
                    size: 15.0,
                  ),
                ),
                Text(
                  'Поделиться',
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Color.fromARGB(255, 109, 107, 107),
                  ),
                ),
              ],
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
