import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RecUserContainer extends StatefulWidget {
  const RecUserContainer({
    super.key,
    required this.name,
    required this.surname,
    required this.image,
  });

  final String name;
  final String surname;
  final String image;

  @override
  State<RecUserContainer> createState() => _RecUserContainerState();
}

class _RecUserContainerState extends State<RecUserContainer> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    final double itemWidth = MediaQuery.of(context).size.width / 4;
    final double itemHeight = MediaQuery.of(context).size.height / 3.5;

    return Container(
      width: itemWidth,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.close,
                  size: 17.0,
                ),
              ),
            ],
          ),
          Container(
            height: itemHeight / 3,
            width: itemWidth / 3 * 2,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.grey),
              image: DecorationImage(
                image: AssetImage(widget.image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text(
            widget.name,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            widget.surname,
            style: const TextStyle(
                overflow: TextOverflow.ellipsis,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 16.0),
          ),
          SizedBox(
            height: itemHeight / 28,
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                isSelected = !isSelected;
              });
            },
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: isSelected
                    ? const Color.fromARGB(255, 240, 234, 234)
                    : const Color.fromARGB(255, 156, 208, 250),
                borderRadius: BorderRadius.circular(4.0),
              ),
              height: itemHeight / 6.5,
              width: itemWidth - 16,
              child: SizedBox(
                width: itemWidth - 16,
                child: Row(
                  children: [
                    SizedBox(
                      width: itemWidth / 10,
                    ),
                    if (!isSelected)
                      const Icon(
                        Icons.person_add_alt_1,
                        size: 22.0,
                        color: Color.fromARGB(255, 7, 106, 187),
                      ),
                    SizedBox(
                      width: itemWidth / 20,
                    ),
                    isSelected
                        ? const Text(
                            'Отме...',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 22.0,
                            ),
                            overflow: TextOverflow.ellipsis,
                          )
                        : const Text(
                            'До...',
                            style: TextStyle(
                              color: Color.fromARGB(255, 7, 106, 187),
                              fontSize: 22.0,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
