import 'dart:math';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/application/downloads/downlodes_bloc.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants/const.dart';
import 'package:netflix/core/constants/strings.dart';
import 'package:netflix/presentation/Widgets/app_bar_widget.dart';

class ScreenDownload extends StatelessWidget {
  ScreenDownload({super.key});

  final List sessions = [
    const _Smartdownloads(),
    Session2(),
    const Session3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBarWidget(
          title: "Downloads",
        ),
      ),
      body: ListView.separated(
        shrinkWrap: true,
        itemBuilder: (context, index) => sessions[index],
        separatorBuilder: (context, index) => const SizedBox(
          height: 20,
        ),
        itemCount: sessions.length,
        padding: const EdgeInsets.all(10),
      ),
    );
  }
}

//two buttons
class Session3 extends StatelessWidget {
  const Session3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //setup button
        SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: MaterialButton(
              onPressed: () {},
              color: downloadmeterialblue,
              padding: const EdgeInsets.all(10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: const Text(
                "Setup",
                style: TextStyle(
                  color: white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        //another botton
        Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: MaterialButton(
            onPressed: () {},
            color: downloadmeterialwhite,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: const Text(
              "See What you can download",
              style: TextStyle(
                color: backgroundcolor,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

//images and texts
class Session2 extends StatelessWidget {
  Session2({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<DownlodesBloc>(context)
          .add(const DownlodesEvent.getdownloadsimages());
    });
    final Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        // text
        Text(
          "Indroducing Downloads for You",
          textAlign: TextAlign.center,
          style: GoogleFonts.oswald(
            fontWeight: FontWeight.w700,
            fontSize: 25,
          ),
        ),
        const SizedBox(
          height: 2,
        ),
        //text
        const Text(
          "We'll download a personalised selection of\nmovies and shows for you, so there's\nalways something to watch on your\ndevice",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 14,
            color: grey,
          ),
        ),
        // rotated image container
        BlocBuilder<DownlodesBloc, DownlodesState>(
          builder: (context, state) {
            // if (state.isLoading) {
            //   return const Center(child: CircularProgressIndicator.adaptive());
            // } else if (state.downloads.isEmpty) {
            //   // Handle empty state with a message or indicator
            //   return const Center(child: CircularProgressIndicator.adaptive());
            // }
            return SizedBox(
              height: size.width,
              width: size.width,
              //color: white,
              child: state.isLoading
                  ? const Center(child: CircularProgressIndicator.adaptive())
                  : state.downloads.isEmpty
                      ? const Center(
                          child: CircularProgressIndicator.adaptive())
                      : Stack(
                          // alignment: Alignment.center,
                          children: [
                            Center(
                              child: CircleAvatar(
                                radius: size.width * 0.39,
                                backgroundColor:
                                    downloadcirculargrey.withOpacity(0.4),
                              ),
                            ),
                            //img 1
                            Downloadsimagewidget(
                              movielist:
                                  '$kimageurl${state.downloads[2].posterPath}',
                              margin: const EdgeInsets.only(left: 160),
                              angle: 15,
                            ),
                            //img2
                            Downloadsimagewidget(
                              movielist:
                                  '$kimageurl${state.downloads[0].posterPath}',
                              margin: const EdgeInsets.only(
                                right: 160,
                              ),
                              angle: -15,
                            ),
                            //img3
                            Downloadsimagewidget(
                              movielist:
                                  '$kimageurl${state.downloads[1].posterPath}',
                              margin: const EdgeInsets.only(left: 0, top: 13),
                            ),
                          ],
                        ),
            );
          },
        ),
      ],
    );
  }
}

//smart downloads only
class _Smartdownloads extends StatelessWidget {
  const _Smartdownloads({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        kwidth,
        // top icon
        Icon(
          Icons.settings,
          color: white,
        ),
        SizedBox(
          width: 2,
        ),
        Text("Smart Downloads"),
      ],
    );
  }
}

// extract widget
class Downloadsimagewidget extends StatelessWidget {
  const Downloadsimagewidget({
    super.key,
    required this.movielist,
    this.angle = 0,
    required this.margin,
  });

  final String movielist;
  final double angle;
  final EdgeInsets margin;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Transform.rotate(
      angle: angle * pi / 180,
      child: Center(
        child: Container(
          margin: margin,
          width: size.width * 0.4,
          height: size.width * 0.58,
          //color: backgroundcolor,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                movielist,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
