import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/application/search/search_bloc.dart';
//import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants/const.dart';
import 'package:netflix/core/constants/strings.dart';
import 'package:netflix/presentation/Search/widgets/scrch_screen_title.dart';

const image =
    'https://m.media-amazon.com/images/M/MV5BM2ZkZGVkYTEtOGMzZi00ODZhLTk3OWUtZjY3MWY4MDY0MTk5XkEyXkFqcGdeQXVyMTQ3Mzk2MDg4._V1_.jpg';

class ScarchIdel extends StatelessWidget {
  const ScarchIdel({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ScarchTitle(
          title: "Top Searches",
        ),
        khight20,
        //list view for the below row
        Expanded(
          child: BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              if (state.isloading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state.isError) {
                return const Center(
                  child: Text("data getting error"),
                );
              } else if (state.idelsearchlist.isEmpty) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                return ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    final movie = state.idelsearchlist[index];
                    return SearchIdelItem(
                      title: movie.title ?? "No Title",
                      imgurl: '$kimageurl${movie.posterPath}',
                    );
                  },
                  separatorBuilder: (context, index) => khight20,
                  itemCount: state.idelsearchlist.length,
                );
              }
            },
          ),
        ),
      ],
    );
  }
}

// row carry movie image,movie name and a play icon
class SearchIdelItem extends StatelessWidget {
  final String title;
  final String imgurl;

  const SearchIdelItem({required this.title, required this.imgurl, super.key});

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: screenwidth * 0.37,
          height: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(imgurl),
            ),
          ),
        ),
        kwidth,
        Expanded(
          child: Text(
            title,
            style: const TextStyle(
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
