import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_front_end/features/patients/presentation/bloc/add_delete_update_patient/add_delete_update_patient_bloc.dart';
import 'package:mobile_front_end/features/patients/presentation/bloc/patients/patients_bloc.dart';
import 'package:mobile_front_end/features/patients/presentation/pages/Patients_page.dart';
import 'core/app_theme.dart';
import 'injection_container.dart' as di;
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  WidgetsFlutterBinding.ensureInitialized();

  FirebaseFirestore.instance.settings = const Settings(persistenceEnabled: true);

  await di.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => di.sl<PatientsBloc>()..add(GetAllPatientsEvent())),
        BlocProvider(create: (_) => di.sl<AddDeleteUpdatePatientBloc>())
      ],
      child: MaterialApp(
        title: 'Bonjour',
        theme: appTheme,
        home: PatientsPage(),
      ),
    );
  }
}
