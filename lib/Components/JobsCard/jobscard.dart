import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Server/AllJobController.dart';
class JobsCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
     final AllJobsController allJobsController = Get.put(AllJobsController());
    return  Expanded(
            flex: 1,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  GetBuilder<AllJobsController>(
                    builder: (controller) {
                      if (allJobsController.AllJobs.length > 1) {
                        return ListView.builder(
                            shrinkWrap: true,
                            itemCount: allJobsController.AllJobs.length,
                            itemBuilder: (BuildContext context, int index) {
                              return InkWell(
                                onTap: (() {
                                  showDialog(
                                      context: context,
                                      builder: ((context) {
                                        return AlertDialog(
                                          content: SingleChildScrollView(
                                            child: Column(
                                              children: [
                                                Text(allJobsController
                                                    .AllJobs[index].tital),
                                                Container(
                                                    height: 200,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12),
                                                      image: DecorationImage(
                                                          image: NetworkImage(
                                                              "https://saynadb.000webhostapp.com/oncrring/uploads/${allJobsController.AllJobs[index].image}")),
                                                    )),
                                                Text(allJobsController
                                                    .AllJobs[index].date
                                                    .toString()),
                                                Text(allJobsController
                                                    .AllJobs[index]
                                                    .descreption),
                                                const SizedBox(
                                                  height: 20,
                                                ),
                                                // ElevatedButton(
                                                //     onPressed: () {},
                                                //     child: const Text("Apply")),
                                                FloatingActionButton(
                                                  child: const Icon(
                                                      Icons.arrow_back),
                                                  onPressed: (() {
                                                    Get.back();
                                                  }),
                                                )
                                              ],
                                            ),
                                          ),
                                        );
                                      }));
                                }),
                                child: Card(
                                    elevation: 1,
                                    color: Color.alphaBlend(
                                        Color.fromARGB(255, 147, 226, 147),
                                        Colors.blue),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          Container(
                                              height: 200,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                                image: DecorationImage(
                                                    image: NetworkImage(
                                                        "https://saynadb.000webhostapp.com/oncrring/uploads/${allJobsController.AllJobs[index].image}")),
                                              )),
                                          Text(allJobsController
                                              .AllJobs[index].id),
                                          Text(allJobsController
                                              .AllJobs[index].tital),
                                        ],
                                      ),
                                    )),
                              );
                            });
                      } else {
                        return Center(child: CircularProgressIndicator());
                      }
                    },
                  ),
                ],
              ),
            ),
          )
       ;
  }
}