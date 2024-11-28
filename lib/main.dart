import 'package:flutter/material.dart';
import 'package:netflix/application/downloads/downlodes_bloc.dart';
import 'package:netflix/application/fastLaugh/fast_laugh_bloc.dart';
import 'package:netflix/application/hotandnew/hot_and_new_bloc.dart';
import 'package:netflix/application/search/search_bloc.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/domain/core/di/injuctable.dart';
import 'package:netflix/presentation/main_page/Widgets/main_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configinjuction();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getit<DownlodesBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<SearchBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<FastLaughBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<HotAndNewBloc>(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: true,
        title: 'Netflix',
        theme: ThemeData(
          appBarTheme: const AppBarTheme(backgroundColor: Colors.transparent),
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          scaffoldBackgroundColor: backgroundcolor,
          textTheme: const TextTheme(
            bodyLarge: TextStyle(color: white),
            bodyMedium: TextStyle(color: white),
          ),
        ),
        home: ScreenMainPage(),
      ),
    );
  }
}
