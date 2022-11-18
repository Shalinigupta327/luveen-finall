import 'dart:convert';
import 'package:luveen/features/home/widgets/single_prescription.dart';
import 'package:luveen/features/home/widgets/pickImage.dart';
import 'package:luveen/models/Pres.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'package:luveen/features/home/services/home_services.dart';
import 'package:luveen/common/widgets/loader.dart';

import '../../../providers/user_provider.dart';

class PrescriptionScreen extends StatefulWidget {
  static const String routeName = '/prescription';
  const PrescriptionScreen({Key? key}) : super(key: key);

  @override
  State<PrescriptionScreen> createState() => _PrescriptionScreenState();
}

class _PrescriptionScreenState extends State<PrescriptionScreen> {
  List<Pres>? prescriptions;
  final HomeServices homeServices = HomeServices();

  @override
  void initState() {
    super.initState();
    fetchAllPrescription();
  }

  fetchAllPrescription() async {
    prescriptions = await homeServices.fetchAllPrescription(context);
    setState(() {});
  }

  void deletePrescription(Pres prescription, int index) {
    homeServices.deletePrescription(
      context: context,
      prescription: prescription,
      onSuccess: () {
        prescriptions!.removeAt(index);
        setState(() {});
      },
    );
  }

  void navigateToAddPrescription() {
    Navigator.pushNamed(context, PickImage.routeName);
  }

  @override
  Widget build(BuildContext context) {
// //         final user = context.watch<UserProvider>().user;
// //  int sum = 0;
// //     user.prescription
//         // .map((e) => sum += e['quantity'] * e['product']['price'] as int)
//         .toList();
    return prescriptions == null
        ? const Loader()
        : Scaffold(
            body: GridView.builder(
              itemCount: prescriptions!.length,
              // itemCount: user.prescription.length,

              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1),
              itemBuilder: (context, index) {
                final prescriptionData = prescriptions![index];
                return Column(
                  children: [
                    SizedBox(
                      height: 50,
                      child: SinglePrescription(
                        image: prescriptionData.presimages[0],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Text(
                            prescriptionData.name,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ),
                        ),
                        IconButton(
                          onPressed: () =>
                              deletePrescription(prescriptionData, index),
                          icon: const Icon(
                            Icons.delete_outline,
                          ),
                        ),
                      ],
                    ),
                  ],
                );
              },
            ),
            floatingActionButton: FloatingActionButton(
              child: const Icon(Icons.add),
              onPressed: navigateToAddPrescription,
              tooltip: 'Add a Prescription',
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerFloat,
          );
  }
}
