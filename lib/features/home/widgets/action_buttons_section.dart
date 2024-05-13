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
                    size: 20.0,
                  ),
                ),
                Text(
                  'Нравиться',
                  style: TextStyle(
                    overflow: TextOverflow.ellipsis,
                    fontSize: 13.0,
                    color: Color.fromARGB(255, 109, 107, 107),
                  ),
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
                    size: 20.0,
                  ),
                ),
                Text(
                  'Комментировать',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 13.0,
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
                    size: 20.0,
                  ),
                ),
                Text(
                  'Отправить',
                  style: TextStyle(
                    overflow: TextOverflow.ellipsis,
                    fontSize: 13.0,
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
                    size: 20.0,
                  ),
                ),
                Text(
                  'Поделиться',
                  style: TextStyle(
                    overflow: TextOverflow.ellipsis,
                    fontSize: 13.0,
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
