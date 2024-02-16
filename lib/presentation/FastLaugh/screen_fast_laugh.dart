import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/application/fastLaugh/fast_laugh_bloc.dart';
import 'package:netflix/presentation/FastLaugh/widgets/contentsofscroolitem.dart';

class ScreenFastLaugh extends StatelessWidget {
  const ScreenFastLaugh({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        BlocProvider.of<FastLaughBloc>(context).add(const Initialize());
      },
    );
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<FastLaughBloc, FastLaughState>(
          builder: (context, state) {
            if (state.isloading) {
              return const Center(
                child: CircularProgressIndicator(
                  strokeCap: StrokeCap.square,
                ),
              );
            }
             else if (state.iserror) {
              return const Center(
                child: Text("error 404"),
              );
            } else if (state.listofmovies.isEmpty) {
              return const Center(
                child: CircularProgressIndicator(
                  strokeCap: StrokeCap.square,
                ),
              );
            } else {
              return PageView(
                scrollDirection: Axis.vertical,
                children: List.generate(
                  20,
                  (index) {
                    return VideoListItem(
                      index: index,
                    );
                  },
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
