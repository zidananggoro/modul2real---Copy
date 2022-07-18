import 'package:flutter/material.dart';
import '/constants.dart';
import '/models/movie.dart';

class ImageAndIcons extends StatelessWidget {
  const ImageAndIcons({Key? key, required this.movie}) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.7,
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    padding: const EdgeInsets.only(
                      top: kDefaultPadding + 30,
                      left: kDefaultPadding,
                      bottom: kDefaultPadding,
                    ),
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: size.width * 0.7,
            height: size.height * 0.7,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(40),
              ),
              child: Image.asset(
                movie.img,
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    );
  }
}
