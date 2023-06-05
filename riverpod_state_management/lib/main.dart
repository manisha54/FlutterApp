import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_state_management/view/add_view.dart';
import 'package:riverpod_state_management/view/counter_view.dart';
import 'package:riverpod_state_management/view/dashboard_view.dart';

import 'view/si_calculate_view.dart';

void main() {
  runApp(
    ProviderScope(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Riverpod state management',
        initialRoute: '/',
        routes: {
          '/': (context) => const DashboardView(),
          '/counter': (context) => const CounterView(),
          '/add': (context) => const AddView(),
          '/si': (context) => const SICalculateView(),
        },
      ),
    ),
  );
}
