import 'package:luveen/features/admin/screens/Prescription_reply.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:luveen/features/admin/services/admin_services.dart';
import 'package:luveen/features/home/widgets/single_prescription.dart';

import '../../../common/widgets/loader.dart';
import '../../../models/Pres.dart';

class AdminPrescription extends StatefulWidget {
  const AdminPrescription({Key? key}) : super(key: key);

  @override
  State<AdminPrescription> createState() => _AdminPrescriptionState();
}

class _AdminPrescriptionState extends State<AdminPrescription> {
  String? x;
  List<Pres>? prescriptions;
  final AdminServices adminServices = AdminServices();

  @override
  void initState() {
    super.initState();
    fetchAllPrescription();
  }

  fetchAllPrescription() async {
    prescriptions = await adminServices.fetchAllPrescription(context);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return prescriptions == null
        ? const Loader()
        : Scaffold(
            body: ListView.builder(
              itemCount: prescriptions!.length,
              itemBuilder: (context, index) {
                final prescriptionData = prescriptions![index];
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.15,
                    color: Colors.white10,
                    child: Row(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.12,
                          width: MediaQuery.of(context).size.height * 0.12,
                          child: SinglePrescription(
                            image: prescriptionData.presimages[0],
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.height * 0.76,
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Text(
                                    prescriptionData.name,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    prescriptionData.name,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                            child: Padding(
                          padding:
                              const EdgeInsets.fromLTRB(0.0, 12.0, 0.0, 12.0),
                          child: VerticalDivider(
                            color: Colors.green,
                            width: 2,
                          ),
                        )),
                        Expanded(
                            child: TextButton(
                                child: Text(
                                  "Reply",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.green),
                                ),
                                onPressed: () async {
                                  x = await Get.to(const PrescriptionReply());
                                  setState(() {});
                                }
                                // async {
                                //   const String _url = "https://www.geeksforgeeks.org";
                                //   if (await canLaunch(_url)) {
                                //     launch(_url);
                                //   } else {
                                //     throw "Could not launch $_url";
                                //   }
                                // },
                                ))
                      ],
                    ),
                  ),
                );
              },
            ),
          );
  }
}
