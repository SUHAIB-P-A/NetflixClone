import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/application/search/search_bloc.dart';
import 'package:netflix/core/constants/const.dart';
import 'package:netflix/core/constants/strings.dart';
import 'package:netflix/presentation/Search/widgets/scrch_screen_title.dart';

class Screenresult extends StatelessWidget {
  const Screenresult({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ScarchTitle(title: "Movies & TV"),
        khight20,
        Expanded(
          child: BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              return GridView.count(
                shrinkWrap: true,
                crossAxisCount: 3,
                mainAxisSpacing: 15,
                crossAxisSpacing: 15,
                childAspectRatio: 1 / 1.7,
                children: List.generate(20, (index) {
                  final _movie = state.searchlist[index];
                  return ResultItem(
                    imagurl: '$kimageurl${_movie.posterPath}',
                  );
                }),
              );
            },
          ),
        ),
      ],
    );
  }
}

class ResultItem extends StatelessWidget {
  final String imagurl;
  const ResultItem({required this.imagurl, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(imagurl),
        ),
      ),
    );
  }
}
