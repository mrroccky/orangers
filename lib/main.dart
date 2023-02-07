import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:get/get.dart';
import 'package:orangers/Server/AllJobController.dart';
import 'package:orangers/Server/GetAllJobsServieses.dart';

void main() {
  usePathUrlStrategy();
  runApp(const GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final AllJobsController allJobsController = Get.put(AllJobsController());
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromARGB(251, 175, 204, 13),
        title: Text("orangers"),
      ),
      drawer: Drawer(
        width: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  GetAllJobsServises().GetJobs();
                  print("😍😍😍😍😍😍😍 reaponce ok");
                },
                child: const Text("Load"))
          ],
        ),
      ),
      body: Container(
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
                                                      BorderRadius.circular(12),
                                                  image: DecorationImage(
                                                      image: NetworkImage(
                                                          "https://saynadb.000webhostapp.com/oncrring/uploads/${allJobsController.AllJobs[index].image}")),
                                                )),
                                            Text(allJobsController
                                                .AllJobs[index].date
                                                .toString()),
                                            Text(allJobsController
                                                .AllJobs[index].descreption),
                                            const SizedBox(
                                              height: 20,
                                            ),
                                            // ElevatedButton(
                                            //     onPressed: () {},
                                            //     child: const Text("Apply")),
                                            FloatingActionButton(
                                              child:
                                                  const Icon(Icons.arrow_back),
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
                                color: Color.alphaBlend(
                                    Colors.deepOrangeAccent, Colors.blue),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                          height: 200,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                    "https://saynadb.000webhostapp.com/oncrring/uploads/${allJobsController.AllJobs[index].image}")),
                                          )),
                                    ),
                                    Text(allJobsController.AllJobs[index].id),
                                    Text(
                                        allJobsController.AllJobs[index].tital),
                                  ],
                                )),
                          );
                        });
                  } else {
                    return const Center(child: CircularProgressIndicator());
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}







/*
Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              child: Text(allJobsController.allJobs.length.toString()),
              color: Color.fromARGB(255, 0, 129, 235),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: Color.fromARGB(255, 226, 151, 12),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              color: Color.fromARGB(255, 10, 230, 127),
            ),
          ),
        ],
      ),
 */