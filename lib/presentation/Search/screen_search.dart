import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/application/search/search_bloc.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants/const.dart';
import 'package:netflix/domain/core/debouner/debouncer.dart';
import 'package:netflix/presentation/Search/widgets/screen_idel_scarch.dart';
import 'package:netflix/presentation/Search/widgets/screen_scarch_result.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

final _debouncer = Debouncer(milliseconds: 1 * 1000);

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<SearchBloc>(context).add(const SearchEvent.initial());
    });
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //search bar
              CupertinoSearchTextField(
                prefixIcon: const Icon(
                  CupertinoIcons.search,
                  color: grey,
                ),
                suffixIcon: const Icon(
                  CupertinoIcons.xmark_circle_fill,
                  color: grey,
                ),
                backgroundColor: grey.withOpacity(0.4),
                style: const TextStyle(color: white),
                onChanged: (value) {
                  _debouncer.run(() {
                    BlocProvider.of<SearchBloc>(context)
                        .add(SearchEvent.searchMovie(movieQuary: value));
                  });
                },
              ),
              khight,
              Expanded(child: BlocBuilder<SearchBloc, SearchState>(
                builder: (context, state) {
                  if (state.searchlist.isEmpty) {
                    return const ScarchIdel();
                  } else {
                    return const Screenresult();
                  }
                },
              ))
              //const Expanded(child: Screenresult())
            ],
          ),
        ),
      ),
    );
  }
}
