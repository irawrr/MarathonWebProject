import 'package:flutter/material.dart';
import 'package:marathon/pages/admin_menu.dart';
import 'package:marathon/pages/check_data_screen.dart';
import 'package:marathon/pages/confirm_reg_screen.dart';
import 'package:marathon/pages/confirm_sponsor.dart';
import 'package:marathon/pages/control_runners.dart';
import 'package:marathon/pages/coordinator_menu.dart';
import 'package:marathon/pages/detailed_info_screen.dart';
import 'package:marathon/pages/how_long_screen.dart';
import 'package:marathon/pages/inventory_arrival.dart';
import 'package:marathon/pages/load_volunteer.dart';
import 'package:marathon/pages/marathon_info.dart';
import 'package:marathon/pages/my_results.dart';
import 'package:marathon/pages/my_sponsor.dart';
import 'package:marathon/pages/past_races_results.dart';
import 'package:marathon/pages/runner_menu.dart';
import 'package:marathon/pages/runner_sponsor.dart';
import 'package:marathon/pages/runner_registration_screen.dart';
import 'package:marathon/pages/bmr_screen.dart';
import 'package:marathon/pages/bmi_screen.dart';
import 'pages/main_system_screen.dart';
import 'package:provider/provider.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/inventory_arrival',
  routes: {
    '/home':(context) => const MainSystemScreen(),
    '/check':(context) => const CheckDataScreen(),
    '/info':(context) => const DetailedInfoScreen(),
    '/reg_confirm':(context) => const ConfirmRegScreen(),
    '/runner_menu':(context) => const RunnerMenuScreen(),
    '/runner_reg':(context) => const RunnerRegistrationHomeScreen(),
    '/coordinator_menu':(context) => const CoordinatorMenuScreen(),
    '/admin_menu':(context) => const AdminMenuScreen(),
    '/marathon_info':(context) => const MarathonInfoScreen(),
    '/how_long':(context) => const HowLongScreen(),
    '/sponsor_confirm':(context) => const ConfirmSponsorScreen(),
    '/my_sponsor':(context) => const MySponsorScreen(),
    '/runner_sponsor':(context) => const RunnerSponsorScreen(),
    '/bmi':(context) => const BMIHomeScreen(),
    '/bmr':(context) => const BMRHomeScreen(),
    '/past_races':(context) => const PastRacesResult(),
    '/my_results':(context) => const MyResultsScreen(),
    '/control_runners':(context) => const ControlRunners(),
    '/load_volunteer':(context) => const LoadVolunteer(),
    '/inventory_arrival':(context) => const InventoryArrival()



  },
));
