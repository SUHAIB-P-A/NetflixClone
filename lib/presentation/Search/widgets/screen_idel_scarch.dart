import 'package:flutter/cupertino.dart';
//import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants/const.dart';

const image =
    'https://m.media-amazon.com/images/M/MV5BM2ZkZGVkYTEtOGMzZi00ODZhLTk3OWUtZjY3MWY4MDY0MTk5XkEyXkFqcGdeQXVyMTQ3Mzk2MDg4._V1_.jpg';

class ScarchIdel extends StatelessWidget {
  const ScarchIdel({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Top Searches",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        khight20,
        //list view for the below row
        Expanded(
          child: ListView.separated(
            shrinkWrap: true,
            itemBuilder: (context, index) => const SearchIdelItem(),
            separatorBuilder: (context, index) => khight20,
            itemCount: 10,
          ),
        ),
      ],
    );
  }
}

// row carry movie image,movie name and a play icon
class SearchIdelItem extends StatelessWidget {
  const SearchIdelItem({super.key});

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: screenwidth * 0.37,
          height: 65,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(image),
            ),
          ),
        ),
        kwidth20,
        const Expanded(
          child: Text(
            "Movie Name",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const Icon(
          CupertinoIcons.play_circle,
          color: grey,
          size: 50,
        ),
      ],
    );
  }
}
