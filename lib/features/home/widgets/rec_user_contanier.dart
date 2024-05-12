import 'package:flutter/material.dart';

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
    const double itemWidth = 111.0;

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
            height: 50.0,
            width: 50.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.grey),
              image: DecorationImage(
                image: AssetImage(widget.image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const Spacer(),
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
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: SizedBox(
              height: 40.0,
              width: 91.0,
              child: GestureDetector(
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
                  child: SizedBox(
                    width: 91.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        if (!isSelected)
                          const Padding(
                            padding: EdgeInsets.only(left: 3.0),
                            child: Icon(
                              Icons.person_add_alt_1,
                              size: 20.0,
                              color: Color.fromARGB(255, 7, 106, 187),
                            ),
                          ),
                        const SizedBox(
                          width: itemWidth / 20,
                        ),
                        isSelected
                            ? const Text(
                                'Отме...',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 20.0,
                                ),
                                overflow: TextOverflow.ellipsis,
                              )
                            : const Text(
                                'До...',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 7, 106, 187),
                                  fontSize: 20.0,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
