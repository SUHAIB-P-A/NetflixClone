import 'package:flutter/material.dart';
import 'package:netflix/core/constants/const.dart';

class ScarchIdel extends StatelessWidget {
  const ScarchIdel({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "Top Search",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        ListView.separated(
          itemBuilder: (context, index) => const SearchIdelItem(),
          separatorBuilder: (context, index) => khight,
          itemCount: 10,
        ),
      ],
    );
  }
}

class SearchIdelItem extends StatelessWidget {
  const SearchIdelItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage('https://m.media-amazon.com/images/M/MV5BM2ZkZGVkYTEtOGMzZi00ODZhLTk3OWUtZjY3MWY4MDY0MTk5XkEyXkFqcGdeQXVyMTQ3Mzk2MDg4._V1_.jpg'),
            ),
          ),
        ),
      ],
    );
  }
}
