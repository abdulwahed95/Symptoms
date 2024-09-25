import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:symptoms_statistics/catalog/presentation/home/provider/home_provider.dart';

import '../../../common/config/app_colors.dart';
import '../../../common/widget/custom_app_bar.dart';
import '../../../common/widget/custom_loading_widget.dart';
import 'components/symptoms_activity.dart';
import 'components/symptoms_articles.dart';
import 'components/symptoms_chart.dart';
import 'components/symptoms_dashboard.dart';
import 'components/symptoms_list.dart';
import 'components/symptoms_tap.dart';
import 'components/symptoms_toggle.dart';
import 'components/symptoms_total.dart';
import 'components/symptoms_update.dart';

class HomePage extends ConsumerStatefulWidget {
  static const routeName = '/HomePage';
  static const baseRoute = '/';
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends ConsumerState<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.microtask(
        () => ref.read(symptomsViewModelProvider.notifier).fetchSymptoms());
  }

  @override
  Widget build(BuildContext context) {
    final symptomsState = ref.watch(symptomsViewModelProvider);
    return Scaffold(
        backgroundColor: AppColors.white,
        appBar: CustomAppBar(),
        body: symptomsState.when(
          data: (symptoms) => symptoms.isNotEmpty
              ? const SingleChildScrollView(
                  child: Column(
                    children: [
                      SymptomsTap(),
                      SymptomsDashboard(),
                      SymptomsChart(),
                      SymptomsToggle(),
                      SymptomsList(),
                      SymptomsTotal(),
                      SymptomsActivity(),
                      SymptomsArticles(),
                      SymptomsUpdate(),
                    ],
                  ),
                )
              : const Center(child: Text('No symptoms available')),
          loading: () => const Center(child: CustomLoadingWidget()),
          error: (error, stackTrace) => Center(
              child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Text('Error: $error'),
          )),
        ));
  }
}
