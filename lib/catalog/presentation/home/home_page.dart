import 'package:flutter/material.dart';

import '../../../common/config/app_colors.dart';
import '../../../common/widget/custom_app_bar.dart';
import 'components/symptoms_activity.dart';
import 'components/symptoms_articles.dart';
import 'components/symptoms_chart.dart';
import 'components/symptoms_dashboard.dart';
import 'components/symptoms_list.dart';
import 'components/symptoms_tap.dart';
import 'components/symptoms_toggle.dart';
import 'components/symptoms_total.dart';
import 'components/symptoms_update.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/HomePage';
  static const baseRoute = '/';
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: CustomAppBar(),
      body: const SingleChildScrollView(
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
      ),
    );
  }
}
