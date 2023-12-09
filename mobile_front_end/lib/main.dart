// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
<<<<<<< HEAD
import 'package:mobile_front_end/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:mobile_front_end/features/auth/presentation/pages/login_page.dart';
=======
import 'package:mobile_front_end/core/screens/starter_widget.dart';
>>>>>>> 7eab6f644c533155e0547774f11a112d11de2ff9
import 'package:mobile_front_end/features/patients/presentation/bloc/add_delete_update_patient/add_delete_update_patient_bloc.dart';
import 'package:mobile_front_end/features/patients/presentation/bloc/patients/patients_bloc.dart';
import 'package:mobile_front_end/features/patients/presentation/pages/Patients_page.dart';
import 'package:mobile_front_end/features/vital_signs/presentation/bloc/vital_signs/vital_signs_bloc.dart';
import 'core/app_theme.dart';
import 'injection_container.dart' as di;
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.android,
<<<<<<< HEAD
  );
  FirebaseFirestore.instance.settings =
      const Settings(persistenceEnabled: true);
=======
);
  // FirebaseFirestore.instance.settings = const Settings(persistenceEnabled: true);
>>>>>>> 7eab6f644c533155e0547774f11a112d11de2ff9

  await di.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
<<<<<<< HEAD
        BlocProvider(
          create: (_) => di.sl<AuthBloc>(),
        ),
        BlocProvider(
            create: (_) => di.sl<PatientsBloc>()..add(GetAllPatientsEvent())),
=======
        BlocProvider(create: (_) => di.sl<PatientsBloc>()..add(GetAllPatientsEvent())),
        BlocProvider(create: (_) => di.sl<VitalSignsBloc>()..add(const GetAllVitalSignsEvent(patientId: "eFLS4MWGjLZFaNuhPnig"))),
>>>>>>> 7eab6f644c533155e0547774f11a112d11de2ff9
        BlocProvider(create: (_) => di.sl<AddDeleteUpdatePatientBloc>())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: appTheme,
<<<<<<< HEAD
        home: const LoginPage(),
=======
        home: StarterWidget(),
        // routes: [
        //   "/patientsPage": Navigator(() => PatientsPage()),
        // ]
        
>>>>>>> 7eab6f644c533155e0547774f11a112d11de2ff9
      ),
    );
  }
}
